Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4212F38D3F9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783033714; cv=none; b=n8kOxNCbiCvIjjcBu3FtnElnqzVKEYHEKCTSq6t5uD7Lx/Jz8z61zhVJrVin7QVeSmAuqK5vNqQvXrdPQPeSljM5rXZfHKUIPbYM4C4Xj4dcFwN3e1j9bj4SxPfdb8yGmz1v6+5cWk9lLYedVlYmwpvD05rFw6uTCae3dAcC4ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783033714; c=relaxed/simple;
	bh=GKi6fbj+urgvMjmlucPOF8qzTUDrLzfujEid8iCZOaI=;
	h=To:Subject:From:Message-Id:Date; b=T8Yy7xaNOb8oWRiXFSM/f/XuLEtoStAoRm9zNMEwYFPYU4dJ+ELYTlKWHf+lMJ21k6kH3qAPqpJZvfGu7zzuG5MzsRRASRZfqbQ+zv4IU33XqDagi6Yo29HxItlxmxZlYo+TjSXQvZzyuK6t4l00Tq06XuCu5EyPXZBDBoUS7Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG+mX+Zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG+mX+Zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD365C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783033713;
	bh=GKi6fbj+urgvMjmlucPOF8qzTUDrLzfujEid8iCZOaI=;
	h=To:Subject:From:Date:From;
	b=uG+mX+ZulHuW5sd5/gVS1/kQC6bXYmNEP1Mf3MaXtINmShENENrVA+3qIPuL7pLqx
	 EMWIsNiGbcdOU7Wmsews4y/NgIUPCISXUMRhpJxYub9CP8gPONKymN+GmjUB7/rCLG
	 99Bp0uOCOX1N69Fjl2+5vHE8dLmMgLTM4Ay3OWlg9qR0BL6XlLWfSfRD5XWf609W/F
	 hUNsktN43l17katqntKI0DFD+ryix4DjOpR3BeO7Ge8erW7NdilszDtn37rxYkD0Xe
	 DKNlGckMoI3QW3wZG6/GkhhZyPPcNeVcN41lhyNNazFihnABD/hZyYYMp9NtGS5yCh
	 1dgpPmJGJfH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE08C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303371369.385.6268264062007239350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f547ab688ef23443ecf5567e48bceca851c21bf98dd16254b4a67a43fd636d
Date: Thu, 02 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783033713
