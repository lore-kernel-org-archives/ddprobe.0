Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0757723AE87
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767034434; cv=none; b=BZ/XylmGqn+bsfDc81D/CzG40ZhAR71OcP785ygcN4GlRF+U1LbS+oekkYJPBFpeowpR4UEtzK7pI5WH/rJN5wKUGlsAHMtRkOAfiESuFXeQ46LdWdlK/t/q3L5lk4FCM4S6FkuuyhnMH9uwRLmKwmJiO+YD1sEx70OSj31U4yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767034434; c=relaxed/simple;
	bh=2h0e2DeC1LH3XqA70+b/0VTcOz1OuMHxbrxL/7pf00U=;
	h=To:Subject:From:Message-Id:Date; b=mjx8Km0LJJvX+fLJ16IzSA1Z/voMnqve3F+AmhEIpamTw8DoFFXT541te7aq13t7yHufP5z4FPkYwXZEGZq1tV5cpBVv3bPLVd2zU5ropMICguTB4hzZZWy3Fp7gRwCuQ+Dj+ME4WgJx/b/EmX+JucjgHAJZp6f7d7HU0oEdDIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWftjHnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWftjHnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C814C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767034433;
	bh=2h0e2DeC1LH3XqA70+b/0VTcOz1OuMHxbrxL/7pf00U=;
	h=To:Subject:From:Date:From;
	b=rWftjHndNbEQkVJjrAfvsf9DMcVd/kE8cRA1nud8B05Z977Zh5UlhCRiabhLto4j7
	 xQxtpqBc5BaszzMurzZvv/4lOgnfo0Y0svbTa9hjdNOKwVOo7JUlXllBt+Nd1omzWE
	 b73ugfz7wlZ9t3KW5F/GR0Nuqcxr7ZBCmueUALKJn6ruw+9xa7zLsEJxFBDrMJdQcK
	 oqIrUJjEcTOcPd+i1rYBnRx3f2le0I8AXelPhKnHmBWZ6KuHEQZQ+LNPu5//r9xWdS
	 lcmyGzLiYPo1E6ANCS4+kymPf7oYUgA7bL1y0iMInXzNKaZEjDlQOsDanpv28L+pXO
	 o1dwrIKrPnGlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2BE92FCB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703443357.26932.15334067446998269525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6a92716c4523f8778cccb0706260851f757cdf08bb78876500a896aa61a577
Date: Mon, 29 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767034433
