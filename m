Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3831527AC3A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764516774; cv=none; b=FVeuKp3hn6u0pN3cV7UpqTRxEtQ/Wu0ya7GAulvEprlYb87/gvfAo2N5I1HkyAQeFq7shyjn6JvqpOcQh3cnXCFOkKs75fxQdpUfEllJHAlvXdLhzjvekLSPCk6xTDPGjZgQB0zqrLZtfq0hzXcFyg0RTd8T3NGLKn4+8RYGzm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764516774; c=relaxed/simple;
	bh=rP1NvG0BVdxaNn5EZft1sNIIly9BYo6RPWZM1Wll3XM=;
	h=To:Subject:From:Message-Id:Date; b=O9NU6MS/Rd01LnKLFKxxcpEzjp9ORW9f60V52DxS4aznDgbJTjwmLSPBf+3wsa9Tnc18MNWgc7j8AsrRrWgEoCRgQVU3qTptrobKBj7IYc50jhqqxuuW86UuyNPRpkx/hOcg+huxRgGIOV+Ir+GOYCSHPby2y8+JWn1NkDXTltk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjfcKA3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjfcKA3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBB1C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764516773;
	bh=rP1NvG0BVdxaNn5EZft1sNIIly9BYo6RPWZM1Wll3XM=;
	h=To:Subject:From:Date:From;
	b=QjfcKA3XK9ALbzhc6gQ9RwPkAA3tVRDswjYF/HX2VlX9zqkwCF0Zyv7NqaOZvbEvM
	 RUu+DRKivTquQiMAP4X40AKv26wZ5eiEjfJVCDepupkG32VbQDyxkH1m0lYGDIpRvZ
	 k9NKSqV3Uno68Nh+hmymot43FDBpMP/yYV6HD6LJ0w9cIPrN3QqM3tnn6Xas3itM3z
	 RM8uaW+u0FfC+Oattt8+g8krq8AWpjqHxsxSNmQVXDgj5s8IZ3pak7PbROxYajvB/e
	 8AOAck2bL1qtGTgpyZH4oXHtgLMb/3s6D78D8znnNNSHVNEY3zcPrQiBBFa0zmljRx
	 HJOfxRKly1AOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F94D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451677359.30969.4371409827455424316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bee2950fb77d26557f2e01ea8637c9156e5ccf873915e50f0bb3ab3519158a4
Date: Sun, 30 Nov 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764516773
