Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178AC248873
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774010694; cv=none; b=anDxeZOC6Z4ioTM51DbgyamN1SJlcWLOfFj0cVErwF6ZG1azBxPqvT0r+lUqPdL+IwYlLWLEjWiDIOZ8KDYqkiyO1bqPA8pTa7h9rCir9kQMS5FHlHrLPfUZm/NWuOGcMmqHh2cwDdbyqlKXHupz6IQVLOh2mjYhYbVllCfuBWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774010694; c=relaxed/simple;
	bh=JDOF4iqWWjwZhardSJXYhN0DvZ3YfjPMuYyfjybI134=;
	h=To:Subject:From:Message-Id:Date; b=p5XqrvhE8zma5xP5XpiYlZSQlVtsVlAGJ44mwryLngbT/BPZQLryxMt9o+1sOxBZiwmQJyzUHm32AompD/hbajjUNC8x9e0rnmHoVFX6D5QtrAtRcwYa72p+8V0+l3O2Vu5Fv8ko4z5jkgsl5caXXPWyiPHQlAR3zYcUuyBzGm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uw0992RI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uw0992RI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D03FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774010693;
	bh=JDOF4iqWWjwZhardSJXYhN0DvZ3YfjPMuYyfjybI134=;
	h=To:Subject:From:Date:From;
	b=Uw0992RITGicreyTlRWKGgNGflUdY53e14WeN7RLTBdqW+h2YZl48idWpUOHW2Csh
	 XypCCt8wVPJzn4cwYRephRQUKAGRwsVVvtv+hnepiLvpeiwfBB+5NaRP1ysmLjG1Zl
	 NI51z4Rnkrq+gkLUSiGljLEj2vDdhXc7OZwNPLThq7HbbOl0mkhoK/ovQD0MZJlC33
	 +h/qq2iJmi1S7JtWK5pRIVe8KoHrai/J1YY7MQz+KhquYj0cIKtQrca2Cg9ZsKHD3G
	 WTy+8COoc0qajQXJe1eYqr5bwBvjLOR1ym0ML/l9Mlhh500XkoGj6Wf0ZqiF0bnFyo
	 NzXu+4dXE3efw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F388108B91C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401069357.16085.6351464695467541206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5af84b7f6168d00d14136bc9d6e99a8dd672062268949639ccc0eb09ccb7b0c
Date: Fri, 20 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774010693
