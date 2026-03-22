Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD01F9E8
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774168494; cv=none; b=B4w7/mxHhxAG+jEGu0Mq+Q61aDQDkiQtAez5pwMU+BY/L/Ia1YvynWaA9vrQTIOOpy/4uZe6+ZXDlykW3OLrCVQ759rculDTVC5+OTG4Ok4/GbsVwifzYJyIky3TAmUW2DrwRHMfRvbYtlCy4VF9RK3vZLY1fgHqVzftjQKhh/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774168494; c=relaxed/simple;
	bh=YcTwVKL3iI45Yna5xzFdGDH4nfqzexyS/5mH6KCtx7E=;
	h=To:Subject:From:Message-Id:Date; b=mmZlB9ZSnBkj7bxqgV9dKtteR0kekNftcSDIXQusD87ok3XG5z/KMJBfxC9SPJUJAo5gfSrIqDNI6QQOj3875a0T/8rh+/RcxgsbyfNCoWk9wgfDDmXliD/ydm+hgvfe0x/UgHmlo+pjuvJy9CkGVsniMrOyjYGAyuVPIn0qLfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOj+Tx88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOj+Tx88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0464C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774168493;
	bh=YcTwVKL3iI45Yna5xzFdGDH4nfqzexyS/5mH6KCtx7E=;
	h=To:Subject:From:Date:From;
	b=XOj+Tx88EuaplY9wLMZVq8imtET353JLd5VvTvAqZEZT9U9YGb6Q1Qy+d20t+qV7m
	 Lt8hKM5VAYYbT2zN/bZcoOGi5p78aw62v6Wf+Q3y4R6LY+CFReO2rLJ2l4fnKisQqS
	 MZh7ag9luLSh5e4z5F8AQUZalHqVXQnZsBwxkHojyE/kf9eIegF673t+XI9O9cOt73
	 QQZpGJP5Xj9P80guJIl6Ce0tQkSjs6G/7YGA+LC0wknzScPXSyMkHfMaLjp5RBdPCJ
	 OT7XKaTfVZvgTTGhSYbz8J+GkylelFtNefHnmFRlGbXszVePmc+uEf7uXorO1ExIoB
	 DE+ADBm32uNdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A518FC72AE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416849361.22719.1813733251217052107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da8ce64e5080387bda18903184d11028781837463f4341f1085af42b95aa17b
Date: Sun, 22 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774168493
