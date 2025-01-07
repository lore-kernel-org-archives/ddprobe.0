Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0C73F9FB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736223954; cv=none; b=d04Oi3Wk5PDEDpRlKuHpks/GNClj4clG+l3MEf3nwdEHZ/AnhI4NzuAXMPKldXhc7VAi5TX7Xg9Jb1RsUxFZihsO+0VuQBjPGbTUaPT+CgDrFUOiQFmtZtnESfvxmQlieEEEw0BBK2v1gbr6Cz5PZFbg4YrtuMs6lgYR8jiKUvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736223954; c=relaxed/simple;
	bh=6Ye0WAC/IPuqLcGdEKCqva6dErJR1bn/oAT2vTjuJn4=;
	h=To:Subject:From:Message-Id:Date; b=SqNbBvk9lgLXgdUOGknzyLMqbAQ4XaESJFmeNBaCLhmiydVIQUaldVtuoUlnXwW9pI0HPTCKhAVQwXnwMXzUu0JFG1AdaYo5O1O7qrixqq7GiTUqZEQ+n3ZqKoNtQbxmo9gBusHAS/kye46H2B6Pvz69HqRF0Rhv+EaKxB+TkmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU5f0uS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU5f0uS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BCDC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736223953;
	bh=6Ye0WAC/IPuqLcGdEKCqva6dErJR1bn/oAT2vTjuJn4=;
	h=To:Subject:From:Date:From;
	b=tU5f0uS9GKt7QUnimPCi/0YZiJfP3VLrp9ys0ETH1d1Kr0h0gve5x/J/TFmP5eK+N
	 97V2XCUEvIL3PUIIl9JkU8tubQD8eiTdTG+MfTKnkeACesAuRHWTEM22dYCW0TY7YB
	 dwAiKDQGLUozZgGos/NSQ73rW/HIJdb9r+wAXmgVfLWb4wlAyT9jGrEcAZDdmdB947
	 +ThWBXgc3xI3MLFvoDD9YOCtKRdyhd7AQeqYtaZfOoRKfb5iDzBZPA3I5xZ4ZhNQfT
	 U+hEXGJJyhIjMuz16mK0PecDRmfGXtexXga4HDxdDaVQDH5JY1zpa1GoQSogAtHL+E
	 Kvdfmq02w7y0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DAFE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622395358.7237.17065034978142114101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d828bee64746dd0340f76c7bf370485fd33a915b15414e88d28f83bd92b081f7
Date: Tue, 07 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736223953
