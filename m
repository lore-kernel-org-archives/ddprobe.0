Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BD725392A
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764999773; cv=none; b=ubPA8+qTudVtj1CvPHeDKuUf1yBgnhPSkjLYCjAYHNfdW/7CPnUPVTdXVzTIwgdyXHnt0P/WBiKW5wy3JkZuXRXta0bD/yRMGsscLSzg7QZFB00Xgzib2dvV/B0TtcMwLvYvhICKwqR+2T0pbfEW7cb+8tlEyo7gN9lFj50RihY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764999773; c=relaxed/simple;
	bh=A1SFCo/GgQPFzw+MqJihIeYyZZvNg2n6h0LzqqsSDZE=;
	h=To:Subject:From:Message-Id:Date; b=s/FPJEhrkdxeFaLhOeP089oiqGWNzDmCTNY78aR+mO18TiUoicsy533hSvMH70rPPhCbZ3yes+M7wyOD+SrchXDFMgXG4FTdXXnIdHHHeW36GgG8WPxX+DUNCI8GdcBriq0CF73ojShOhgQtMoJnc1J0KaVwCmhJMyNnF1oJwOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvR8Rc3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvR8Rc3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA6CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764999773;
	bh=A1SFCo/GgQPFzw+MqJihIeYyZZvNg2n6h0LzqqsSDZE=;
	h=To:Subject:From:Date:From;
	b=gvR8Rc3nbXdihyU7US7MXew/3EaY/Bpw6ateAnP7McNbDbFRLqOWa0yi+NhUL3gfP
	 0FTd3eapzZ83zzFb/LPfs5E5KzzDfsZxA8hPH6iy7+0/+l25r3N3g8NL1ZsNsqwA+M
	 0mXRSYwFgCMvXpArVzMKj4gkkIoRe5xIos0Vr6PvLf3jTE49Diix2UAm0C4/TzbL3T
	 EtqHPCoRtq8cl7L0c8CD4WA1r4sTKkTxxEz2TPdt5g03pIY7xc1oehvJCuqsJtfR5G
	 gbSzUQYXRQGKUF3fk4Kzud5lpAezAnlWLEOQgCKZFVQlE3IGyIL184QGW9GIJlgEjk
	 OK9MdlhhJFSHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D2FD3ABF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499977358.6986.15948238104923409176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79fb32357646fa259f68780d7ed1e23c8779be60127e6b7590f184fb0325eab
Date: Sat, 06 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764999773
