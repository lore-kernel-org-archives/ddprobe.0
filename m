Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7AE19E7E2
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758728994; cv=none; b=G2zJO072vrtLHIKVHWG5C5NlLzj42HdYno7InIBIWhKjDysmZyP/I/zO2Q09Vu0GCzmfD23SCL7CkYCsFQmXk8YNTLuxpFy/akpG6nCF4+jFLnWsVZGW0e64N1hsWPbrtPDmj90zZiFE6FII32RO2gJ3ZcWm4k1+Dcm3ELZI34g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758728994; c=relaxed/simple;
	bh=Xwz0qv5/WnldkDJVF01EmuiBaAZuUlcOP5ds1I1uNLs=;
	h=To:Subject:From:Message-Id:Date; b=M1+ZIUMlwBBnWmd+kLz1wqtaD65B4yM5R3ZSkPzLzJi/YPC6YSn0Z9YJZYh+V+yJE2SUFFs90IKhxftJ57Mw9fbzWXkjFqCa+GZ1EizJ21m3BrZ/f8Gaqvc+fXPsQspwgGKvCpoxazeIvXg+suYJ4iLb/nJGIOL/ACuo5WKAi4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN9P3XfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN9P3XfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44FEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758728993;
	bh=Xwz0qv5/WnldkDJVF01EmuiBaAZuUlcOP5ds1I1uNLs=;
	h=To:Subject:From:Date:From;
	b=VN9P3XfTLrC1gsNwmCfV5qafjzOKhcOuDygG3YIVkIU1G9HZQ7yCf/9N+b90QfQHw
	 JQab0kxDK5DJWeqEoPtSIMHM6L9DdF6jYGAr2a35wdcMZhpoGcNr56JgNJa8arptbP
	 8/8SkUD/ntELinNhwNFIXw7UjtEGUAq7QVOM850VZSgANm+Y9cbb90elbdbf3ZetR1
	 kLjB+iNIofG2JMmQT2E81EzLYoJVVTTNntHeYOI+dGODXM7E5FOHN1c+lIf7Z1uYS+
	 16P1A+rA5Kqi8PGOuySZFYBADHhWD7j09JvAgnjgMKm6GEZPCMntfrNJN8ViqhNfyZ
	 Zp8QV0Y0ByVKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91395CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872899358.19552.8614785588309881225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b25cadff919f841fa38c25d2dd7fa26771111dc2661269f37771627c632d13
Date: Wed, 24 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758728993
