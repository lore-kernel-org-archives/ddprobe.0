Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31350252296
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747067994; cv=none; b=flcYHmT538Nxx7Rc5Qc8PkJJfIr9cN8kAM+v3qeIPrliQZ0jVbXjyYGHj7tAaL//vYLTI5amTwPfG1bF3qk/qIrJ2OCmLEkN3IZNeoaD5wXxVrNKhUuKaJEiaxGQPhww6+BFPCgT2qhKhXhTYlQWPBhswNOwdfmEPjYWGStD7R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747067994; c=relaxed/simple;
	bh=lLYbcp+KWhoah47BR9JvHJ5KCxrcUuYApk+M4nKHyZk=;
	h=To:Subject:From:Message-Id:Date; b=XSO3MY61FUcyV5WSnK108yYCW9+UUBcx1EW59rk6bU65hEOy8tWvPeItHQQftJh4zG4Syp5w4r5Mgn1oe9iC/pmyUcMIlQ3XlGOD6DPooOz0Qrkq39ejxsfaqctd046/a7uBZZulrXJhXy9gY2eAJrQX9OQVoAYLsI8vHg6ZT4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLT0zqaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLT0zqaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF53C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747067993;
	bh=lLYbcp+KWhoah47BR9JvHJ5KCxrcUuYApk+M4nKHyZk=;
	h=To:Subject:From:Date:From;
	b=HLT0zqaOQ0VehWzJGJAnQtYmUsm8RYNaRhjjfPdqVe6o/DItU6Q5ztttTIGlBuSPF
	 pFQH2IJXlXRcrL8o7ny0u6lbUw4HwC14OPjsrOCaMPH+qTt/LORp76g2kQPJKuKz2N
	 bz8Y9jlGTz9TaCG5S1MyBuRxUDn0ZJbLwaBgW6Ybr3VOslb/zAhqpyiPZ7sQnfy23q
	 0aweqtuym7yssVyZATtIpb1kkDjNO+SxqPkQpbop/+xDipaNvcRMnAztgsapwQTYgE
	 PpFM+SNIpilXDRUu+BzbP3utqbQACloFvC7PrYPMcPinnuFwrtD0J8AnJWwHxN+4ff
	 hVq+5Xj1Sx1LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA75C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706799357.4213.14573867495823178783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9bcbda405e036435827b3d8e86e3ebbd6f4aedfe9dfbb7695efebd32cc488b
Date: Mon, 12 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747067993
