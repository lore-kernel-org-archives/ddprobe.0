Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7F21E51FB
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752218394; cv=none; b=c07LID0wGfkTKyHklScn/gzmwSbDYC7GaE9H8r+FjPSQh+qCVp5C9acHCBwdCl5VQD1euvD2L/QJUS1hPm/Kl2bJXQJ5EUUzA+raXWVUDfvSFxlxH9hmAYmC6En1zUXPChTIml4zUisOu7XRoYoObUIs4F82dJtK0egaU6sLtbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752218394; c=relaxed/simple;
	bh=rZ7ARvlqpvz+b+JCMzMMuPHpnjsQ/emn0kM/SDRwzD4=;
	h=To:Subject:From:Message-Id:Date; b=OtS22QP4xI2O46CfqVwwG/vJIF6fw5XxA+mTar5nI9WOiBwDvxcfsfb1zX9UnwXYkuXD+ShpKgWRjirQ2fir1KEOFSJTEOXkMg6DPX03nCni6gHfG8w/064x3Zf64epSbVtvwfRAJW3qrr7y/R1bt3Rf5p3BLqLRcUT5ixf6qWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0uOeigA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0uOeigA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5D9C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752218393;
	bh=rZ7ARvlqpvz+b+JCMzMMuPHpnjsQ/emn0kM/SDRwzD4=;
	h=To:Subject:From:Date:From;
	b=p0uOeigAxvK+yDVCgpDfw7ndUoE5QuFtGGUaz6Q47TdwkYM8h6M7HcNpZOrrpFLuA
	 bUXBFhHwNy8cXtet2BoDVQe7N1155xXIztCMjJ9Y9TEi22kQ38AqT3+XTwi2dWniTy
	 hDJzbb0q/R1jYMlyssWqK4MqpuQ+/t3ogMQgnwYPtoYgbm6FvFRn8BAwjmZTeZ0e99
	 JMBa3ke9IrB2MXi83HVE4Wzl3/IKBF2aQgVi/TU84XLgGeLz2O8c009NVrNw3LavkB
	 yEkklgFr5V3vKLD3gM4y42PuhAWU9fzWPLeH1eers80PwsLUnHHo4CfHP8nh0zr9ei
	 73P6/afaFgYmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E79AC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221839357.13248.1048441322539495386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b55f184b65f59bed5edcd65ad145347f00ae2c6cc77aea19a1cd97af794c598
Date: Fri, 11 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752218393
