Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B4C1514EE
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738829754; cv=none; b=Z/AhBnU2rcOEyhTXcxS7kDTFG/25162072Ur+Qi4G2TakpB6XDRxIKBpF+DaZ0IJCTf12meXT7BfeYDJtGUM9kPzZXJG5mZ8pAcQ2H0aHLx47lUYRJ2XhUDpVEVz/b0+77aqDZScLtK8kvZnd1JUiRc/gE2wt//+/G+VddQvAX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738829754; c=relaxed/simple;
	bh=LXb+Q+fbZvahbaSo0dv3/ft5A3OR2hZ8lUZWXFYTJmA=;
	h=To:Subject:From:Message-Id:Date; b=rTvF8qbKK5gmTmseRRJtyxyuG4yHkYB+fgVBkMuvJupDKZJs64JqFWEY9gh/LsZXcDmLpC/dFAEKGUqPeIBu9LjN16xNDU+KB/PhUrWFSPoyWMvwKqNPaCuNqr3Yg0oKntAN5i6nHhM0o4eZztbGsHugtzrk65HlR7Ir20cAPyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3aBURzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3aBURzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7808C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738829753;
	bh=LXb+Q+fbZvahbaSo0dv3/ft5A3OR2hZ8lUZWXFYTJmA=;
	h=To:Subject:From:Date:From;
	b=B3aBURzKXgD9Cbe3Sg7BRxgVXMhLrnr8/A+PVfLMcMQWUoxmGflnNFP6ee6vrtSCL
	 oKL3n8g6fKvpuLBEg8p/mN3/LCrsji1fZD4dsNNWydOMPfbZoCZIRmYfQys9PzeJSW
	 GXoWa6ZJ/3aMd05ag1foONybn+CGuS69JjJTBQ9yVLmkyqU9VW2RdH4R8yHcoQJuW4
	 m2H1uNApDItqw/G2drO8xkBpEiLOT1P/9Hf05lHU2HDOiIooCmE7VHWIiepFb1XODE
	 vcisaX+aWPTYuwhYx+CaenYSDxuOx21yvWpYw3VH5i4n0aBAGnZNeouC08ADpT+ZUO
	 4QXndWnT3jnVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1069C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882975361.18772.17049138444595215575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4066447ec22f8f865885771a716c016d63be540067de97717d87115208b2a265
Date: Thu, 06 Feb 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738829753
