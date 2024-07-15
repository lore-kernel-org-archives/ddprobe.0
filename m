Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B69848D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721010743; cv=none; b=gQ3xiLP+JU+QV8Gyc5qC5obL0yOaiNFf0PjamBf6U6XMA955dpBshJiXYC608gsUHykIrsuLu3xhjLOAxaKOZTVq2riw4r1kJZwWJTuMWyg2tBR+7tuoSNWWY9ZuVaS5WVFWkQZh2lWUMN0QWQdOzb1Me3V3T0GCy88wL9ZoJ9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721010743; c=relaxed/simple;
	bh=4Y4u/oC8QaDcsvoJ7BcxS/TGGTzkr0klxbqOhA2H+Hw=;
	h=To:Subject:From:Message-Id:Date; b=I1QKLdFJ+lTMtZ0MmItxN/cpWO3WGgQbuqb8hLt7IAdNsXDFhVinznpGJhspDuVDJsYmDORPVzobr9u9lVkKF9xj1aIfcnpSaxnL6IjKsyh5kjnVVmPSaR9jD6+XjfRNlStnw2J1QCY/4kStPlBRbkRf8XcNqj4zEFy/MNP6E1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YftIU0B5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YftIU0B5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFCA8C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721010743;
	bh=4Y4u/oC8QaDcsvoJ7BcxS/TGGTzkr0klxbqOhA2H+Hw=;
	h=To:Subject:From:Date:From;
	b=YftIU0B5Wkhj3e/aBXTP8HJWHwdk/RK9wVIFPkUDqdEHRcJVmXNR+qpl1CRlGk4le
	 kDlRo1NhjsF7/Upj+SEeTv7nMYAHfft/wK+HBspTinQmpFr0H8bQ5pohxxwvqUB7jz
	 GRHoFCUj9qu+CM/MoMvYX67NaK10hmZBTOBNyyi7LAYD8yz0plN4zesiQS0HHit7C7
	 LjuomjKFKPnKApqUn31b8C1U2nVdU13J++C1Ru8RbGif6ZIIoZsL51CqLMCE+zzzqp
	 lz0lCopo5ClBBIof4NjZ8PuP4i6rdcb3hjPPpHv4RoNEoTVsWL+nIEB43lNzOPwsLY
	 avBwPrTgT3OdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D43CFC3DA42
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101074280.4404.7203589764462127439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4f0b5ac7d6b5b0e0b54cbffc761012ec52d8cd71bc85653608e736b2554d89
Date: Mon, 15 Jul 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721010742
