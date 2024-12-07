Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED37154435
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733598354; cv=none; b=dsUR+jPNcQiPfBPIr7pag92fy6QyONTjfM59EeMNmR/NXF4dyfrOrwUEF/ruXDoBqmxUr2h+DEPJM7n6OK28vods67isFUdz/HsRVG5NZNOmdn8+SA4qZYWONIvvvbRFxBPQ6J28MpaAJycJhdf65+maZAA5tCr/Vp9+COVj6R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733598354; c=relaxed/simple;
	bh=vBfSL5VY8rM1a2Wl19p7gPcn5O3tNj9mFROXjrRbGfw=;
	h=To:Subject:From:Message-Id:Date; b=TI3mNb0b4H9XvsGOBns01OittGhy4KwnG5MEKrsQJZVNWlSFVHY1m8hogcE6r5izSdH1jdOEY4sTCXlF+VWj0JRmLjWxRPV45WcbN7Rw5iXBN4L1pQk4WAax444vOhMcNIVIenPut5u0elJld4MjX/ATM8IOiwg7QxIKZeY0NyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvDMd3i4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvDMd3i4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AE9C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733598353;
	bh=vBfSL5VY8rM1a2Wl19p7gPcn5O3tNj9mFROXjrRbGfw=;
	h=To:Subject:From:Date:From;
	b=uvDMd3i46PORCTQiJFIQg+WOvvo937XSh084oTWTWAERSOoYOPpSfp9GIuoNW97e7
	 IhvqQAGgsYM2jkVCGPQwJPAWWIPapejD4hWwnzy+LxYDhkwpy6kE2IfVy9JRJnIjFr
	 HqG41UmJRq1nRAcNZ7U8m7V5H/xPZkbUBo/B18Bx5x3lcAwZEhRcwXW14j6mQIQpAA
	 M9B/rcF7zOLDnDySKquSuCu6xUKyf79dgQyh4J1wLk8gZKv57Y4f19RRnRMf7hxtB6
	 DGjOkZRKqJVZ7PA1gojfg+7BJ5F1lYq8BSQobW8KLj3j+01CNtWWgRvOksCMxsPpDM
	 IvLpXO8UcjDLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1934E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359835363.27974.291118291816306366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328c46956ecb94ffd38ba1f31751ebbaed79554181c67de696df3963ff4e248f
Date: Sat, 07 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733598353
