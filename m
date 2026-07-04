Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F723320CBE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783186714; cv=none; b=f9BVMYivJfrcbB6p+47jtgaTNHAVX5uuXiFFQ+ofjZl/0nw6Ds2uAsNgRaU7/M22zVz1fIqCuiBBvW67xxwnm/VQ1i5ku39ygQ6P7tncRoRI+Jnl7172ijmb0lsRhNQ/uOq6rumGiDwfHTi1IJkQ3+KQcepsskhXc1hl/qXs0U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783186714; c=relaxed/simple;
	bh=qVoUUH3hhKETm0uEIXIRz8kn39hwpMHlW3ys26TqitU=;
	h=To:Subject:From:Message-Id:Date; b=V3M5C2TRCjwXp4GIK2fvm9XMyBbw+P1ConPDii+6LG4iabopAI8vNMumv9wd/nzwdrKh3a1XN+Eilb5cQD0vU702Z6zQZagJGI8CQ6zhY8Pr+YyGa3K6QSFT0bfHskPM+lMNV9ZIqiLq6jWj5bpdVUCCjm1COrF31H/Jr88khYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBwzYG7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBwzYG7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3FC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783186713;
	bh=qVoUUH3hhKETm0uEIXIRz8kn39hwpMHlW3ys26TqitU=;
	h=To:Subject:From:Date:From;
	b=qBwzYG7c8BWVIoi/Y1dEqamFcF/fccDm6oo64dXwQWJZoaQM6yHV+rz/NBuZM5Qwh
	 Fyn9ZRLO+oY0HINblpWfwxDDn5bYodkcqiihDfSYLcJMnS4yG4kt2tDJZHhOWCgLIo
	 4WZZ0setHAQXSPix0NLIOLum9B1Tty9mONyiUTapPG2dVu31hgXM1wSyQoRN8EH87z
	 lEqzq9887YyoZeJt1AyR1NiKz18dmzlEORB53lWmue3Re/RdOOcYzyCrjhCC/MFbaa
	 pzyaeWVwB+R34nBjHPAzafnsvQLs8WBYH+h+8dXLNriYpjj0dlGvKqrOk3tuZz6xac
	 H1ZpGezMzFUqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF335C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318671368.9516.16031679836566576527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d744e81a287249c6db73a8bb6a0e276f9c047a657ff5a1739e6b678001a2d17
Date: Sat, 04 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783186713
