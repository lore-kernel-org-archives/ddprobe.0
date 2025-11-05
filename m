Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152FA2D8779
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762381194; cv=none; b=PDFMrtAG32cVXDhlLvRIJcchtQRz2vGV0uGTjz2fDS2WRzE13EvFqMFP8hGPLxh+vuknx938xkyqsxzsLldZTFn8sUuAL3w5ysjz13R+xDCX4wI+8C+ujc7NpKJbeRKczuNa9Im4VeiwvMZbe8/vUQ2ZpbmZzZ2FSJcK1mERshs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762381194; c=relaxed/simple;
	bh=a1SQf/OaxSRU4h2pv9CDJ1wgYQ0wR8B9LuhLYFGZT/s=;
	h=To:Subject:From:Message-Id:Date; b=UvQIUHCFiX/jV9hBUBeOgQauOh9yTB119T5fdJ9M0ZTJS4hweV8OTgbZwLAKtXDCxh/63M8h1wBOaoGIF7hWmlJ0oHpAfZJZrAiaNzEUQNUQom3QBbiM7Jc9GoZYgqVCImK2cDHSlkxb/PCe4i93wsul64vo34RZX8ZI9/9+n70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgQgBWtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgQgBWtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DC2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762381193;
	bh=a1SQf/OaxSRU4h2pv9CDJ1wgYQ0wR8B9LuhLYFGZT/s=;
	h=To:Subject:From:Date:From;
	b=sgQgBWtVma776iZEb40kdWtdA4XLsXEvTjA5urvmQwWFrUpCqauPPslDMmvzo4OVs
	 EpFwD+DUULAiKqLl+p7rqIQDwm92jmj+8ha3IWPqh0DDgxtowPDNiY0dXdyZbVU8Cb
	 WBiAVQKOMwyAuXzneI+7GU0JGx2qhgCWTKnuJtY4ahbIcA+ZJE513O9HADSrZRnakL
	 v7VZiyOX4zMQyCeHzz58jYhLw0RCZ9YOz6YYz/V1S0+jldT4Nzm0xZLc8q5G6hP4gG
	 YZ9lacgL6BOex6NG1hGb/Ai7F2JcF8F7XkfYRbQXba7CoXE+ZBe6GlECb7CXzNF4Nz
	 n4YvJM9jQLvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91144CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238119358.18847.9859171755254473346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f243422ab6832e02857f7094509014672962a51166e737201c1754fcb5fcce
Date: Wed, 05 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762381193
