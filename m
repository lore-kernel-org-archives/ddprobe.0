Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CC8101DE
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752435594; cv=none; b=HdWwbBxsGuGH1TE+pN5+7jHvKk1oLxV3lEYCxuvb21pL2hXfppzHOU5X2sYm+Vj/vspfet3pu3joPRLihWIw3awxL3mojPuv3wP45DDfjm4GsSmR8cxEJl+wnBg6xDcRCZxFEDXs1M1UoKDpti42cY6UUkWIEskgM/Yiw4EqsCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752435594; c=relaxed/simple;
	bh=JdSvV/Lp6ShK+/1JeRd1sWfDTSKUMjVEr+0niKjOqEk=;
	h=To:Subject:From:Message-Id:Date; b=X79IHwN6bknhDiyr1R/6+sxdHHxd3NZRPI5JgAbjvj5DA3wbcLM+M+MExCNMI3XBGvurE+VN3/u0swSTtYJ9eoWL4aLzov93AwN+cnXjdCy9yX1v4KRP+LuPW8MMzLzQi3WWtBnC4QsG3OQWO19VD4OcoRcGm0Kcs78Uhdh585s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdX9DGl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdX9DGl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79E5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752435593;
	bh=JdSvV/Lp6ShK+/1JeRd1sWfDTSKUMjVEr+0niKjOqEk=;
	h=To:Subject:From:Date:From;
	b=FdX9DGl0Ttjd5jdUDJ78infJv+yDMBXQcw51mMlRCOVCYNk1gX8CgYHGka6rpXpuD
	 A6ACQv1RVSh2qayhxk41CsuxaO/UwP+jCJy2abZwvXLNg2xdYlAWl5shva0T4LMW+W
	 56MV0IbKHODficmS1UCoiNnP/CTucAvVFdM0X3xlBzjpO73BhoIaMbJuWS52C4gbdv
	 23M/rEM+F+Ja0wI9OW+TIDICsXp1Elj9A9bAFmSl1WII1Cqh4+WzCx14K3+ca3Hpkq
	 K2Ag3Ka3aaTY60V3DELZMJBoxtaJAQ5qa02muPYQawvxEEUScOKL40q+cqjF6mqYVS
	 joj/3AhkfZrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F37C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243559357.19891.3732013679940343384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22bf5aa40234c42df520c2021be11a447f885303a83fd785d29bd606e429ef3b
Date: Sun, 13 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752435593
