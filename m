Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB76E63D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B0FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671469887;
	bh=ZzR4lrco3dnME2rIPR9qOxMJvm1OJpRjC/0blw5JzHw=;
	h=To:Subject:From:Date:From;
	b=DUSMZXC8ivqdDM8eeiruiTDKvvBaSMRmWj5Djqvn0ECzky8uy39VBv0OnRM+DK3UD
	 s3JRvYNPDdsE57tdmop24XtXFjQtjXbe4GT+/2K7TBe1UgZ24zjbQ+fXkC76W4+suN
	 PsMtYnAft3T/3d+5htFZj40CZ5uTfjhGLrw+R+4q/av+CZjHHrTHFl+0cA6nrS4ZoO
	 RMAHjvbU7rsFwAQb1s+vhwEVzvnslkywy3kXq4dBEvmK9smwwr9pUexCGlrioM5ZDN
	 29B68D34n94/YQIrDEU53d2F+hRKgJMxCPeMCcWTYA/IzvQJwI/jgjXHi67s42uPdF
	 9CjFhfuid05eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E012C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167146988737.15296.9655275326892294860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3deeb25cbc0215694c1ac460bd16e5f9697abf1b62a5130139bd26dbfa5f9ff3
Date: Mon, 19 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671469887
