Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04168356A15
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771339494; cv=none; b=fHNrm9gl0w1UGL1GOZFh1KaJs8z8jP/Wj3oka5YNQIR0CKXsJV6la12G1uLN1EnidXGu/go+von6bHSWNvbsybf0W/FqQkz4zg1LSe02Lp9jLPvajbFnwEytEdGy9F6RL+k8/XzYzyTe7xBd2gHooLOi139jXDszl+8MEZwLdLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771339494; c=relaxed/simple;
	bh=vgINPF7nQWR4ZQvIKRe/MEzlIsrgrhwo3rRgKsJvHhI=;
	h=To:Subject:From:Message-Id:Date; b=PgTIo5Bth4533ZStitjXXjL20L/oQdM0Hs5xkIyWzJtspb0OJQ+ZrvcNKJHXArAnb8+po/TkZIedi7DY6jF36ChBaZ3vy7SGjSvqpFYOlmYAmIgkqRoCgeOeqzZlwziJMLG1D3j/dUE0Dk/vhGf87MvB7Gp4PQ85FfrBtcS/wMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQVXv9Ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQVXv9Ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ACCC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771339493;
	bh=vgINPF7nQWR4ZQvIKRe/MEzlIsrgrhwo3rRgKsJvHhI=;
	h=To:Subject:From:Date:From;
	b=EQVXv9Ea2iWfIrUyL38dDjau+GOVcd0tnW4fJSji7oRtpWbT2v8lVgalXYhJBpoMI
	 6hDtFikD4hXWZENrvs7SfD8OPx5qArQGXSn3Lk2jO+KwJXBoJALhGqUVN1vjP3wTDT
	 N2gy/Xz0Vi3aWjy+a9yV0mGJ6yQetnV42jRhT0cqp1S3p65MogZkxNsZWD9AavrwDd
	 a/EGd1ibjmC70rJ5d4xLt4Ww1uwZZQ9fNR6agSXKDhMgeDE6+ymublMeGQc6CTmhcW
	 Jh76vLIiCxMJD1bC7KvoVFBlq5JRaZd704g301UhUYF1Ml9uTBCF96TgQkCcpjZuHW
	 ySfc0TIcnn+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DEE909BA
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133949359.26061.7698223311893834910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78be43ed5ba9bf09677118d67fb7b61b1f15bf1d6e44fed63da18be890540b44
Date: Tue, 17 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771339493
