Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C193128BE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767897234; cv=none; b=Dt5Mel3yCRkmUkrx9YvSm5u0q9epuyKi7o86mGydow3orKG0b1gP7fEBTYx4Yx320BBAKLbYOrMokvCFeMIJbLMVQlCWYpEYRw0UGgQNsfvbB2+o+c6C+mbGgmCn2pBsEDLUunat0pK2Dq4Oaw5HTt+x6MOFWHg248OjvxlM2fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767897234; c=relaxed/simple;
	bh=EFOChkob8ZhHZCN/pOZ37SJdp/a4g5Nc4yLqtMXVF7Q=;
	h=To:Subject:From:Message-Id:Date; b=l5uuiyng+P26kahxGtB1FY/65ssdFPEL4rV/EcAHNTb9RFnOjJFHSebKRc6Y2aJDGkuzwSCxfatK6MWzXA30e5rYMOX4Ql8YY1zl/gzS/gSj58lPxOUGTt/3ID7mE800z+vphgmkUcN7lK33svBCfVm5HJ+Xesuki527TNh2iXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4o59+h+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4o59+h+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7D0C116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767897233;
	bh=EFOChkob8ZhHZCN/pOZ37SJdp/a4g5Nc4yLqtMXVF7Q=;
	h=To:Subject:From:Date:From;
	b=G4o59+h+F4Cr01MHPBZ2zuYl7z1j7KZPpojbRZbbXSDRhvh+luoTWx5l613C6JA4Y
	 CmbRXMUEHEst68LWDAb+f3ekIKArh8DKr4QKy1bNyggulzWHRl5O+6PMnYbHOuvovw
	 C9oj6eLShxmBe6qxz2OeMBYqxtN5cbzS3qRNx/TD4cKe+xIr/r2taIKCBxwKWxK3En
	 +ujNFaA04vTFgKAx4XRc+VfyznXOgRwbjmX37tnjq+p6BgdbLf57nbZVc71IIlf9uS
	 qyh4kSCoRre/0Cqj8u2CwDzdCLp4m5xhiktCb6n4ebg31mAw9/ghwRKMemK/6uNuWa
	 YFiNdq9b7ui+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F26CD1D478
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789723364.27934.14879728849052539646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada44f2c913275a794cefc51ed53d31b001283e9cec8a94feb202a26c8982065
Date: Thu, 08 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767897233
