Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1422D29BD90
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764694374; cv=none; b=IYxTd3GX1L9Bm5bhRJxMillYvxb6scuZuEL8UPCH7gCogs/UnIugJ+gLFwzsA0RfeTQ2ob/Zzk1VR5A5nYAp3XQs3lBMQeurSYMyPJt+fW+v+QtiuTDjuwpWMNQ/eXhgqn5Xh6XmKyd9sMiT8GelVgFm7hm5rXJON9rYGotuggQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764694374; c=relaxed/simple;
	bh=vHknsySkAu0chMTrIHw1GsgRyDGsTm71xp3EcgIs2q8=;
	h=To:Subject:From:Message-Id:Date; b=fd0P8vP8hfK26dmgJr2JTQxIPEDQHh07z5+IggkG+aj/4wBUbp5KSPL2a0IllmawdRdP/iiddelUbpQ06QnfcmLcFLMV+ZjqGcBvHtsaVJZO+wl3F1Ye7OwdPM/LCBKjnxCV7PBKAHm6nkC05lcijkFmgJBxRemBqqyvQcInXU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxNbLo3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxNbLo3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E3EC116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764694373;
	bh=vHknsySkAu0chMTrIHw1GsgRyDGsTm71xp3EcgIs2q8=;
	h=To:Subject:From:Date:From;
	b=NxNbLo3/PgJ6+rFU0FugT1LKzcqX2bl2s1uDnAvrTFRABrxnlKPo/Clec7FKAgeVF
	 REs4X4n3zRRrfoVeW/QTzIbSM6dTB2gUEWiXnd3t0e1oA8N5VsdCHCdCzufknbFSYe
	 NdmfRF7G8n8Ri+bCkbAo2y7C0F58Axt9U9D8NScoNmtULcIhQt2tRYgRIS0na31Db/
	 ThMfe5orALgrHMOPvt3rYbCqWvc+IV8W2v/vdIZy9SVPY2A0QzFbK5OVmwWcYxKbw1
	 m/DfwJJtXCrli0c22XaJdwS02iMVSGTYjoraYigWT2a3GVt5YNcBbAeXH/nnaSiWAF
	 jPS+f4WlQy6LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161ED11719
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469437358.3732.15889048533546738782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b36b7e53371cb7c3ba303d6408d3e1102886f38d95c1e7d98f345e1d8268ebf0
Date: Tue, 02 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764694373
