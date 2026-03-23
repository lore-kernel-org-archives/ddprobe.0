Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE5848CFC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774235094; cv=none; b=j6H0B9D8hZkfxPd4A8euq4SMKUxfvnbXgwUlD5tR+0tZBpd3wz7kIzW3jIDVFPBSgGm5DrX8z6Xc6M2cGF3v5JpDCq2QnfXSBLB0P93fq638T8a9jo2luaHLH+jFpiMouRZUcKUH2xQORmcb4U4YIzSSXk+sjwoUkUUrFbgJ6YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774235094; c=relaxed/simple;
	bh=nnpCX1g3ORxDKpana2qlE2Yz3NaazocaEEGJ7NqjYKc=;
	h=To:Subject:From:Message-Id:Date; b=tag4Uaq46cplnJjV4dn9GRf8h+AkZJ4baVJzfFizjWNPRv8MOA9x1ZuTu6n4L7BFE7/AN2GVlY3qRWFtUfu0CmhH9YClLzDX64yotyuMOHnTIHyQq+JzPuzksHFDTgvzJiOxWFRKCxTuSxRvD5dZQpePecafT/TFNLE7fNO4qoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNjTER91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNjTER91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF38CC19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774235093;
	bh=nnpCX1g3ORxDKpana2qlE2Yz3NaazocaEEGJ7NqjYKc=;
	h=To:Subject:From:Date:From;
	b=HNjTER91+R/+VzvTwh6wMAYoRP+E8ouTbdyxjpEu1lZjh5DYjDYn6ADzOT2BO/P4h
	 Zh04x55QKq8VRC2O/qPUvU1UXQ3lnL/dwneQycLxJBnEo3xzQx9h1dJRRARK1dgUM6
	 NyOfBEIbsBXQ2BodPuHn/wYfJA4di2dVrJV1Ia7pK4rK3XdoemlBSGxhprplFPsZtF
	 86/uLEFz28PZ9L6K4CpGv+VGLfyvDY2+rIBCpo4f37xqetLIoY7ofzjt+so7ra9HQQ
	 lDBMBxIl4QxwOUy5Tl6e7IRbMhoKFPZv3p5OQld/8V3ff1DpWHI+aC78v8cNeEn+pu
	 Ykakqizqj2unw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F08D58CC6
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423509364.2145.12080527615373414919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e585c5dddbe4f3e08513fe66dfcd2857f3399821b3207ff2814d9c393e99ad77
Date: Mon, 23 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774235093
