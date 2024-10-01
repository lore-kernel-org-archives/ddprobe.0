Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5AF6AA7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727790354; cv=none; b=KdwbVKeDLRhi/91Yj81DIJ0VZgbuimXOcEPl7iRfasnpKE4q0Wg+dJW1UwctF7euWxv2RLc6u6Sf+oS6MLVftBpsQU1vrzEcj5LuYoF76n7YAN6PsjEkxru7dpLALA2SgMAI/XG2qsfmXDZI2L3yKi25slKGMd1XYWCtdZLl1ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727790354; c=relaxed/simple;
	bh=k3PTehUA51pjLTFdGpxIRoEEuGVfNklJN0w6ZSq1eAs=;
	h=To:Subject:From:Message-Id:Date; b=dN0jTd0Oar/hs/6bGs6oRu9WT5qIH3IHlUMBXkkH/X3LzyrfxVfIvPO8Nj3j2uc4QNwCMFmwaIpj5rYLVtmKSAcUnGtaxhzxJJ+OybSblL9zM7LWvwML71gz9i2VpDKMnLWlvpqADidZMKzdsl+RGjeG12zx0bWLrLzjVRVia8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8dToVDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8dToVDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B6DC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727790353;
	bh=k3PTehUA51pjLTFdGpxIRoEEuGVfNklJN0w6ZSq1eAs=;
	h=To:Subject:From:Date:From;
	b=Y8dToVDSV1lXrdqnwxfRED0/oAL8qafhdPP8m0j0VNxaKCEwV8ekqU3Yh0LaWfP9O
	 htfrFdw6zDhlGlyQXgSOdKx4xTw0nYBqv0qAAOoomQeS91oxoanYlFql6/ETbOA0ss
	 8D4xlAyQYVODYBW5wthMGrtqPBmle+owIs8Zk5JTCnpRXpEXz9LDLd4KMm+fKAfIuJ
	 mhSpUhDLXc65nSsmHKSULkjfC4sIhRdnQFpw+V881Jo85qfgIC4Nrm/PScOPta03Rh
	 6z6xO87p+KAvR/wulSzGQhFrGZq5z3PVkTCKgvuFZ+VM36m/QzkWNnZKzFf1qtwmhN
	 oT8AwM3ssgdWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1B9CEACC0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779035362.11306.14971160317710133417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5cbc7432fa09704a624d1ddd9d76020747dc9611e382ef402297773a90101f
Date: Tue, 01 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727790353
