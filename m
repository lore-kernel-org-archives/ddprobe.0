Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF64D529
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739637534; cv=none; b=o78aPxGjPBhvo0ld1ygyiuIm2WAbIDSnjTGDRV1JVK+ckTdiUqSQ1grOZ3FtL6XKk1O/9xD8b2N6wJO6qymyeT3nFfveRPMb/RPHx4xdBC2gbynUkdITDQYKS4Xd1XTO5GSACbQNtEMaLqYBmUE3mYxGD2lwOvgqHFFSnErs/Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739637534; c=relaxed/simple;
	bh=WCr0i6v/bAJnxQhnentE9WCw+rUgsYFZ7fuuAiJW4Gs=;
	h=To:Subject:From:Message-Id:Date; b=PXpp+zTjz+Zc+8Sxa/pFrVNPJgpl+wI2VRVS/WdGIrFa0wVBbbgV3qIUt2qx4ayaXmj/5GQIHoH06m/MPtdBZUPLujuhGDEkwKN8UcI11csNzugyEZZx4JO3abqb6M/hPnWpMT5WFmZwcbtJ5R3xpPZrcW3/dgpJUu1NfkEIb9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYQnXKvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYQnXKvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9693C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739637533;
	bh=WCr0i6v/bAJnxQhnentE9WCw+rUgsYFZ7fuuAiJW4Gs=;
	h=To:Subject:From:Date:From;
	b=SYQnXKvtnBPXOwdUS0SiulDE76bA3Wm1s83P+bfGlSKVMgRmtFDNJPb3uriW57C+k
	 q6ejgswMBLHNHYl1p1Uz1G2oN/ymFgptDC2urLKlKxLYqPm6VVx8lbMbeTrSxgVEas
	 ixvyw5XR/wLOo6Brbl7Cp6kIM8UkdI91KqddE6ZdPEidVvaFIg/klUOjtmi7H89xI8
	 dQRjOHhae7oDjf+FLAmmikM+EfCi/iE/i/l+k9VLBWREcAVylNEI6USikMnv9j6I7C
	 lkEVcnh3E9YOSJiNUhGIRDrg1fKsv37HHkYSBKDxJeCcWPnqciU6SNH93n4EU9ghqt
	 nsgKua6uopY1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B21C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173963753359.7361.6148773139877361330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea1c073f35bdb24d7e6381d1ac915d43ea15046d552f9aa869db357b5906798
Date: Sat, 15 Feb 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739637533
