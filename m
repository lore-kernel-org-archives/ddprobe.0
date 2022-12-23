Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7DB15BC
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819F6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671771087;
	bh=9rxuNzvOjP3x5KX2luNQyPBwMNdpQNn/IgscUeSnu7s=;
	h=To:Subject:From:Date:From;
	b=f6ORjwU49T/3jMJqOTW7uZbiGiq9Qt3/TglZuL0V9JrAifCYWnG71NFBO+/dTitjS
	 trdtGGqtk6CslFsWTyyGP8zbi7TLTeYarO+7vs3R8F8ZTprOr+NxzWuaa4VPATOd50
	 78k8rm6d3EyemH+JFHAhdbPDoHA/TgDTQly7SKg5DkR2xcCRt1jlLRy7lcAI9I/z+h
	 QNMtRwiSefDell+fAPNk0SCicHhK9LT/QLXCHVzqCYv/X+GJMUnroaOfy71u/Fk5Iy
	 IWwvpoXaIMER2LLIrSL/iW7+iPg5B45GBgYHAE8ZwbXozpZ6C6g3pU44TZ1prKma17
	 8j6ygQ1mmmLig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665AAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177108741.3073.15032655656462591820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc4bebec3b3edc769880776995814661f71b86112562ca487af8d5e47121910
Date: Fri, 23 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671771087
