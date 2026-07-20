Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F2643D4EC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784564914; cv=none; b=hEhs377vF4sR/fRK17o2HW85VCVj6hmUGf9615mXBQLM/1tTJ5XtWVKWUDzQU/KHFPdoazlN6twwuonO37+jD8qYIh5V0YAwyXX6bIMGoZRQSI/fQlfkL/IA1S1sDlwVKajHktvtm/dCbry5SWJiyo9O39pmycGS6TN17ILJRaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784564914; c=relaxed/simple;
	bh=7WhXKc8V9f205ZETqnXW+xoJtNWbEFYb1dlCEIUGFc0=;
	h=To:Subject:From:Message-Id:Date; b=ZO8f0mFn1A21VIv2wAmXwkBW4AykAVp0LeQPKPxkt0TcQFLmOcoWiKfvr/ZTHlC5/13xBWANoy2wzZNphbwoyNTlf9L3wCu76V85TcKbcpXePvnbH+O3W2W5Ybzvipn0abfg71+pd+D4+DSMLQ/DPvDGlAYKM8c9iavN8QnH87o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEzfgGP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEzfgGP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7A0C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784564913;
	bh=7WhXKc8V9f205ZETqnXW+xoJtNWbEFYb1dlCEIUGFc0=;
	h=To:Subject:From:Date:From;
	b=BEzfgGP9HQ1MdZVHpLcJY4JH1pDC43niNfQAsy8IM1sPsfAkAGqdJfvtYyMNlTtOI
	 vOKKmQKkbk2f7XhMbMRFUSgxvL/0/4EWGg6W14VO0t6Hvx7a8CSybNJxEdLzrl2g0V
	 sNNcf9OgWuT8t/J7s2CHUpnlsZPlpvM/W5mSkpSZ35E66Wvi+DBR1u8x7DDpIKEcpC
	 S3Jd/qom8f11772cySjSqN5QhRrwfufwwul9+fuiBg6ZyRhD8QuSTygOYwMGGMbm1P
	 pNZwEVRPY+dZj/l0dFwNwQ36UrR4i7lm26RjLiiVBeDjWfmTW//0BenlVdccjaMLHR
	 HneHMFH62Zczg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FC4C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456491373.32149.15555904072600773187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37efb1ed715d2f305fcf614206f3ef362fc2be518c4975c445c299e425e371b
Date: Mon, 20 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784564913
