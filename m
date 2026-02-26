Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1792921FF23
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772086494; cv=none; b=o9K2Vk4XApLy5NybO7IZe72XL9UXdm5sgOJEDZmp9OTBc60m8euMUJUaOyT9YaSkEl2+wQXwERP6zzZL2FJ1IegSQjZycx0QaHbsLiTFpTypX68wnCzcTqRSKVQOyIq2Ot9z1yFGJmSKQLBG8YEdMb8XXL/AZxwgKMgpWqa3P2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772086494; c=relaxed/simple;
	bh=oy/4b+9G8wh51trUbLeMjpOTmHngDwDUnMo4bUOvLak=;
	h=To:Subject:From:Message-Id:Date; b=rcQguCI9vpFHcwFxzmhBK7BpGGRCfDlNOhqAGMWUx3H2fya6hMFTOFCumqMBJGmHnSAzcjQA85g0IFYj/BR6Aj4NxFRXLMdpcBAgdpFYpAXsfhzVG2gg5J0D6B9n2mC5edL3AwxZzHWXy1mJ+yJT1zGTaFK+W03Zk+BzeeUm0ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKUlEH/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKUlEH/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA062C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772086493;
	bh=oy/4b+9G8wh51trUbLeMjpOTmHngDwDUnMo4bUOvLak=;
	h=To:Subject:From:Date:From;
	b=LKUlEH/v5w5mJZlacbw/7YFAbdIPofpnI8efohgaNQKtT0dCCZbG1GOxPgSHQC7Ov
	 sFYgsIoSwj0tEbGF+BN38CbWBaQKUKILzRvHIJ6FHwHdjNk63laPxWkgh69FHSPL/T
	 Dk0KUqHBkyAMIchrYNnpDg9YVfKHsw2K3ZPiIpddiG9EyO6oKF0qf+AEp/yBXHH/O5
	 sWSh9yrSEmlQcpKLboxi2+mJ+gcm040m9HLu27cOsIxERFg/+96dHNhBGUHsTZCQVe
	 5h7Xm8ffmdSWKtUChzFrtw53F5y1XeX76HdkaqnoTOzQA4mUNkFvSVk+JPq1cTZZnE
	 dSa/XeDXDe5Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9725DF55451
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208649359.29513.2534450923009215394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328db8fee36a18049170924e59ac5c3528c59806799323ea208396b154f2a952
Date: Thu, 26 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772086493
