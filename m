Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0CD393DF4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755947994; cv=none; b=rnI3DmbxPzPMz52Y+9hawnZgPpjWOYmuD+UCE1/tWEfjA5MmVTIeKbIU/S+gje93C4YzKYhd34GbyI495LBbYXS4TV+ufdKJt3X6ktLlA07YchebuzB+P5Ubnld9ell9zZGV37sfLdJaluQkVmGnugF7ruucUms9shYBKNfu4Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755947994; c=relaxed/simple;
	bh=jSsEcQKY0SoYw0BK6fdkGPs+Q2HFEU4VD7RrQS/1U60=;
	h=To:Subject:From:Message-Id:Date; b=j+3cFWcBNwmTjpWoW2djjlYeyVOIv8gJwu3Hi7o4dISRyuPXQ3nKQiH8psQt3Z23htC+t4XgLQk+NSSf5UNKvnjwrjjXbNpDXKxtcl/SjwjBaKsvP7iTQFqott09bn/JUZdtuu+Qpl6KQmFp5PanRujrfoatuAtr44hMSBWy9Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUk2CdH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUk2CdH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D43C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755947993;
	bh=jSsEcQKY0SoYw0BK6fdkGPs+Q2HFEU4VD7RrQS/1U60=;
	h=To:Subject:From:Date:From;
	b=iUk2CdH+lR2yZbukJYzqXqooFqpVaXguZv6mS7jmfMzkBzOoDoPk1f+4zyZbolLxK
	 YeNnDWMN4/RKQODY6+olHtf3Rq3qCHWSNzMBMP5w2LyDw3+gdKnNI6YVEe//ErfuPn
	 uyfr8zPJJ1pNLInvCDsVBl/JV6I48Xynv4brxPemVXCW1TJ0ALvUQHnyrGkZigZTK1
	 vHZxygif9yKWHJ6DdwVIcLkXxoqKDy1EWTIn1fJPPR0Ld/Be2fTFVQn0IAlQ+lzZXF
	 /3p/5aJjD74OT6rYouNhlW3Lvfku4zrFZJepiJcp1AeafKE0OTehX5ybBJTVkYyKNZ
	 IrlpPWLxhnxwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92016CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594799357.27562.6855156611138083207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77962df2142f2b2af62b3b85c3903a9dbc19b71b118c5c966a8b8abd0d4bf8d4
Date: Sat, 23 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755947993
