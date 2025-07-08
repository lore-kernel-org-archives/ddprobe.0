Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EE7218821
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751952594; cv=none; b=ANKBdHRS32zxC0A4zPBYHfVyjSzZKKT6ezFg5Nx1NwsdE+0tkRWsGGKxGmEh/qYdqLtuQPP3t8x880BUjU6WAlCf8oIjK7gsQNDBefKMPQKKFEFFpm9ufF26Myp1bk8GWnJDyeTSfurhTwzHFk4TwBt48ZedAex2Pzkak7JbW4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751952594; c=relaxed/simple;
	bh=X3idTZ0WJ8uUygtQ6ZJBeqfXwLKtmDtKimkfJbghoZg=;
	h=To:Subject:From:Message-Id:Date; b=a9wSwFD+NOWbh2Va44WToergb7PCYUroLEyF/MBKGblw1/5OuFBAE4fuxkd5uVye/3LBu7Rqmh3iDy5w6SEEPhuuaKI2F/TZfYbgaw+K454SfxAfTCszbDFF3G6d+B8qt0oIXGqEiuw2hWzcTuUDECuTmHVRnW/9BQAHbc8QvcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKiuXwNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKiuXwNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29B2C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751952593;
	bh=X3idTZ0WJ8uUygtQ6ZJBeqfXwLKtmDtKimkfJbghoZg=;
	h=To:Subject:From:Date:From;
	b=MKiuXwNRn0yt5TLgCMZN0vNytkINCn+il38Qv88Ov7E8ktOFU0mOhoM9YIcs3Jfsc
	 /8ntHqrS6vB5e9+xw7bt9YZhm7wgoEh/w3p836OK5mxW8U778C1xLaFTR7JXy6Qpsy
	 Wi/wz3MD5Q50f99BLykZjcs1TZuhryhZRwPzkjyt5r3XjIA9onL8Eq7uPOvR04bduX
	 zEcaRacXmVl7S+ZzMjs6FPuJ8NlX+JicDI8TA+WctWqNGlR9M1pzkmBZ1pYNBotssK
	 K1mb2YdgKN75PsjTpuMBWM8N1ZLGBi3ZOJigl60z+8F0PUcP9YG3uJwl7Z/++j7fbV
	 2lKkgYiKHt+/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A1C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195259357.19161.17560390378430035923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83961618cf3c2da888deb84e76902567409f9d1b8aaddf03dba3bc1814084457
Date: Tue, 08 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751952593
