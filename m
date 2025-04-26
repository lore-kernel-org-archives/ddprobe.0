Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7E717E4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745656794; cv=none; b=DblKoa/cntGBpgziAEVyfauS2nRjKk3ta7iuojMM1sIyvv2ap6j4+jOcSklUz85JZmzVvZeHjB34sQCHlToRhJPmkDqUhzYgwdNQae7WqEHEln8Dp0TJ2kC4XjN/wexKET9EV+V+flKb+ckrAzDx9oW7HvTz8yoEb3eFxyYDtYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745656794; c=relaxed/simple;
	bh=uNWhMnnpUwgTw/Gr2mDuxdfcyh1lXwsAXkpAFBGrHM4=;
	h=To:Subject:From:Message-Id:Date; b=Or88n68GYri2/Pi0byw0plNqQ3Gm2yK62G+j/XXbgDptVdf4wtEc0x6mCS/ybUU5GgoCXyzsBz5mAkzVfxEnKsT1M7m+3vzjupoD3ZC3EPiMoabrRx2sv1tBNybDyXvlzygPMsq6FUxJKpc/jWj/1uYjjmmWYXaaQmkQZg/gyLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCc+8fz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCc+8fz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3146C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745656793;
	bh=uNWhMnnpUwgTw/Gr2mDuxdfcyh1lXwsAXkpAFBGrHM4=;
	h=To:Subject:From:Date:From;
	b=QCc+8fz87HnqEHePsJnOGCRMSgts5D16/zTF0BtMJVZIMCavt1jNkkwrQk2fVoK2v
	 S5v1kgubGJdOzQruiLxGlQaEWfvJyylaum8yHMFBz43lHFcmF5O+iWObvsRNsZ0UnN
	 rcXNnd97vp3M2twwxEtrwZwFrFewiIErxEAyMRyMH3lzaAk9YVVtKu0MZKdJvi/CWO
	 ukNoBF8Ly5w7Yt42qJ5ZOqCPYoKGUPYz5Rd3K6okSpT4mqTJTpLYEG2kBb5UYnIPg9
	 0meSQJu1Pz9mlYjtA3L/O3tzdcs9inIx5ZlTS5jyDF/YUEflMjCHfd9J6Uh7u5nTbx
	 ib881/gx0K2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ACBC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565679357.3415.8623285137826344813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917610db10c63d337b3b446bcfc6acbb624cc1a3f3c1e3900155f698d8324476
Date: Sat, 26 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745656793
