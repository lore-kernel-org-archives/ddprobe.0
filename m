Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758F6337110
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761905394; cv=none; b=UMf34viJP2nTOgkWBk4lDlp3WFRMFDfrP+he3mUcI0wUe8PnWBQXi2BzQFG3KX3jpEvfwKMH1eRvMooAo3lH1Z1fNPBkL321XsRsgTH3c3EmD96uoJvtQTBQ7hhDVy7x+6ZQzkwiK6yMbfn4oYMX3exvl0v5SYy9s7n9xQ8AV+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761905394; c=relaxed/simple;
	bh=Yk2i5ucyjcMPy9BbJYixp/kMn1pY/LA3VU8Q+xpxqhI=;
	h=To:Subject:From:Message-Id:Date; b=LmZoANGEtSxTx9pdF9mmJohaDR7lCc0UiiRyrFclJlNTMa+bHrm3xOox4beKOHQulanugAsyFlCrfbhY8z0Pn+RI0wM0H7v1XYfXCdj8DnfD4xvX4NeoKGfBTCA0guOhc2puteB58fA8AiY4w3I162YKaNw+5mZ2N9ImLysu0yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwkUycpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwkUycpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2856C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761905393;
	bh=Yk2i5ucyjcMPy9BbJYixp/kMn1pY/LA3VU8Q+xpxqhI=;
	h=To:Subject:From:Date:From;
	b=IwkUycpWz+uX57SjaBOdaKWJirAru+yv5/JARM8dHEXUB6SoipQhE49QK6DrQXktu
	 7//gEhOOphjIYmO7xxLZhf4jaLOVsXB8mprsKVi4YrLVdD1Ti2BMZgJPa4cPQzMrX7
	 U0uF9pMtdXkkPRD85UJdXvYnyBzUH4tTJIm7hzoFZUs2DJzTXdRSb4ubefjiuoTMpY
	 xPKrQWQ+lk18HVNWDRkjU/AKiK6TdAfkqbDSTEwbODZvuCjD1dcIGlcSEScmBJng3N
	 5Jl6SAuk0Htpx9SwUzMXQLFy80HOFbPgGBUvJAoQK+GL7C5M48J88CjuenVhkz3QNc
	 ZFsBhGfh/OCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A9CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190539358.18346.3443163408892367748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923f25060bab3e30704f519295a0955d0343630f90642801cbec47b12f0b74db
Date: Fri, 31 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761905393
