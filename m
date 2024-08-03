Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F26612B64
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722724554; cv=none; b=FktgoTsNOfSGWOrnDTN5ALQ6dEyB6A6N2imKBboG0lNVjJLEFDYGeN6VOgRwwGdOp9sqn9ZKwt/9fmcYpjDaKX40DLN81gnEyHv1/ylXjx7mFJKZ5mveDGSy/DNwY4ga/taum83/JLIScdK539MimtlHc9Y8/mJTfOvcpT7y1qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722724554; c=relaxed/simple;
	bh=sQ6QZdcD50WwVBNF33Q3JZDZ4ijBghLBaAl0KJOcUpA=;
	h=To:Subject:From:Message-Id:Date; b=YNqqYB9nXMwmknbp09hRW5fmIu/euvecOtQoKaQdzahes7nEKcjORRT+nQmwJ7f+K+RCEb0JPphs+i9cVGpwWpfBv2U0Gr00cbQkBUbU5HxgUb/wugMEoQv3Gl+N2P9PQbk7pFDKvvRj4Y9vMNQ5b6x2J2/HDN3NmeTSGUhAsHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l83V+mxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l83V+mxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58D4C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722724553;
	bh=sQ6QZdcD50WwVBNF33Q3JZDZ4ijBghLBaAl0KJOcUpA=;
	h=To:Subject:From:Date:From;
	b=l83V+mxLKMOcRE7GcyB6YEznGGRKgZ+0+tlly9c6VqViXvccL7T6dBV+KE9WBD+iU
	 qCubYbZb+X7/DgE3q1/MkORCKkiCZUlU1cfZhzO24pRSWBhvbIkcZNSnO/D8Sy+KZz
	 06aXP+nvQ1AyjHKdr+tCul0W87DKNg0xrbcByZeKV1V7pqkPCQrTzDrHSZKgJ0cQHA
	 ja98nzlfYEVUwMigjaBx5p3OpnXqoFeZh/cCCI0f34FCCQlIfCqe4pO3sq50RmQJEu
	 lSEMXLi5XxPloJs67yULgQ5U6iVypiG6NwkDeFjM9vx/CEAykyljaR9IzBSBolQIEf
	 lgUUQWM+HtYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22F4C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172272455363.4222.18390007433408531531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f52735e6970eb609820522fcd56e3d58112097df1dc5e06833068b5c08e3711
Date: Sat, 03 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722724553
