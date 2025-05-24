Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4579433E4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748092194; cv=none; b=GQd/D/0yy5aT5DtnV3k9G8dV3WAz9EJYcT9Wn0UR34XKo+CjIhkkT5bYjYGfEIk3WWq2StHSlwKDFCfTpoXD8lCuEX69p44vLWLA6Urir0YZp11izc5B7cV2CxNhRTjo5NM2Xr1i+zRaoQNVpixDVyEPny976Xh0nHsubTku6Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748092194; c=relaxed/simple;
	bh=tPBjzAxAoZZxs4Udu/xYfFHkYrEGRwqUMJjDQg09XaA=;
	h=To:Subject:From:Message-Id:Date; b=OAYroU1cJoraix4bSdvCMbI0wZsF4qtppYLIUB82T/9l8BJI5CYEbjXKUZ0BadWZGvQ6tVfNcL1BG/IOUPUsNIXxn53ttoRPnaE6qGUvvgaVhjp60O6gosis9EYWfBlR0b95a8z/3PiC5zreVR2LPMKtj8GzMD7Qz7vLgeEb5WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS+sIj8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS+sIj8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F24C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748092193;
	bh=tPBjzAxAoZZxs4Udu/xYfFHkYrEGRwqUMJjDQg09XaA=;
	h=To:Subject:From:Date:From;
	b=jS+sIj8PwUbqyFaeHDWD33Z6/BZy4RGf06yIvsV6DE4Em5TvTrHLKje8JWJIqsaoO
	 kbGRVdX9EjV7mmHKBrZkA/MQpzaqTEAqSyhOSG7tM/WPENnAN+OOD63d15hpcKNjX/
	 FKMxJjfyNELEDsl19BR72cM7n2jgrMToqsKSFK+1ezTH9dWd8wpMTEYSnuc3IvRftg
	 ggE5lMpWdmlfwIX4G65VCXIknWjgb45UEIlyTu5jxTAFXeTjtXBrU9+I0R7zXzl79K
	 /9RqhGBSSQwMuBLT4bLvRxlBBcWifjX+hBNxk/hAMA2Q4dOzHK3+3vZvfTJStjh3Uk
	 ATR81Is+SIcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A41C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809219357.22255.9918058441902956530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064981f14672000a6265a2f74470499a82270371a7ca0b65de43ce08e06de969
Date: Sat, 24 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748092193
