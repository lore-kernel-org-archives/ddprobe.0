Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EAD283FC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771384494; cv=none; b=azdqTe1aOpX736b1fml/gU6mgO1sXW5wJHtWkblL/YL9c2iRNWSTobN2y5c9HCxdxMLWOsnqa4WzhWKDuf4SnDcz+lwzwNyEEoH/+Ow4RSGcQ4zxU9HCFnFdxvjl4iDm3x4Yx71FJtQRabHlsa8HVG2F97phanZTB1cHHx/Lqbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771384494; c=relaxed/simple;
	bh=2KTn9l4lE23cjbQfNRXN010Mpc17D23uGJgSh9J7Tcc=;
	h=To:Subject:From:Message-Id:Date; b=YqZ0CXNe7nhpIvNjfWblpzLb9depq7e9sMmJyNQSKjhMG2Sh8WJ3m14Kw8tR1l+4cHGq5EovCvuD6LA1icOcdcsyxjJQaXpRIayu+eooxt1znsCnfTbXY/4tpuqWz4EJASpJnIB0kJBpa0ANLD6E2Tv2vvFF+kMHNIzcR1g3t0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBSR+aVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBSR+aVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87B2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771384493;
	bh=2KTn9l4lE23cjbQfNRXN010Mpc17D23uGJgSh9J7Tcc=;
	h=To:Subject:From:Date:From;
	b=hBSR+aVzZ+fwkHDZiZKxFuDJp69bAizjPKTAaS1BwL7ad9SDlxEyPRE9Zo5nzAcsA
	 VJGq9MGWGaLj/p0ELPewdDwwMLFagd4UHSi9DYGx5jvot+iDL7XY1pO+vd873xtXjz
	 buWZE/HHmHyCth7qICeAo9rtc6g21nUNvaMLxz0gvnADOMED7GGJRMQWWHwDJywkWH
	 SBpivPzRSmVbGecwFd8TReJPpb3Uofa1HB/l9Z70hW33lOm7I16P1/jbs1wl4H//Xe
	 KKjpfsvD4niMFQxKE6jGe5gSQ4GsbpCcZ9RC2fsK7C0e6Jf7AgM5w+AhPqwpcN/+nD
	 tGT5i6DRTiReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318CE9A048
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138449359.4821.3942692091440956330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3375253dc3e135b128a46ace838ced619cb5cb842f7e83434d21f23b1fd84e66
Date: Wed, 18 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771384493
