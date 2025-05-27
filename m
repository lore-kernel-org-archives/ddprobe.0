Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F648154457
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748333394; cv=none; b=UmgwvQvbS5KpcEB/fjhBt3Vf0oZsoWpMGE4WoGHGh/lFv+z6Y0HX8ao0G02oKNotFyMY/exOocJZMyMXrs7iETXMWWRRd8nEyObEvsjejvGK6Ty945/QNDD+jiFwuKxDhdBlAbe8ZKSYmoETqfq0Rcg70KpGn0Qo2015+4rOsqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748333394; c=relaxed/simple;
	bh=zIUK3hf+0WX/I2c3vbnT44ccHew8ny+4X3n1RRYoiQc=;
	h=To:Subject:From:Message-Id:Date; b=gL1iAgddpph8WYAmqSRw9qx07mRJ2VgRx91SIon/bfQftwYVe5UNMRxMeuiSI6aItIr9t1QnhUtefpYv8tR/qrZYfhNKoD3xU3uYcEUKAfLoK4quA38uxhllOvwszURrRwHRPy/3hpoiK1UN9SI0Gwn5AbzfpMgEPAnQ8l0+ExU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5zJo1N0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5zJo1N0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80C3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748333393;
	bh=zIUK3hf+0WX/I2c3vbnT44ccHew8ny+4X3n1RRYoiQc=;
	h=To:Subject:From:Date:From;
	b=R5zJo1N0iWBkkTRiP0aJuk/pJ0OGMdNHJ2VZMbSpMj0ZajlWAALblUMSmjr+zRpxr
	 Z6j9Th7mqWNofSKag6xsv5JdlEhGBjpIs+UO5hRe1am1twpZN5aNUi6uMXHBALfP56
	 oYqVrmcnJKOtUqB3Yzf5N9RIcPzG1lbqGlvGQbj8Ie3l+ihLuoZC4kalU4hSU0nr2n
	 kaZyAxhRQOaQYU1tKwONy1nwBwbacMKYRyD6YAYZ+j7zVJbkCunG6N9JM4i3lRjOMo
	 wqs8BBF4WSCCiLPLE4e5s0FtaYM3SsOUfWvdDrLPAVv9/x+yx3en6x3dMaVE+lz62d
	 BtPAXTj1FZbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95931C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833339358.14116.1699674001873719436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93096500e44b9b754d7957b93c1c679140f2a4336c765aa49554ecacd5a51285
Date: Tue, 27 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748333393
