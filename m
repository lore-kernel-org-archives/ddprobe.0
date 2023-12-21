Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB5B4416
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="posE4/4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B11C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703127496;
	bh=lOtPXbVhGnYBd68+FRyBjG5OwpKHPRCG/gp2To9U6zc=;
	h=To:Subject:From:Date:From;
	b=posE4/4wM9AvEV6T3b9wunUa1seJT/w5ka2ue3vXF6rTNpMHsoCPGCNKc6rElDcmX
	 8nDavD81ivQdCRLuulmbuQiELYKh7g8ghxPsAJklKfP2VsHnH6F+hoxWJNx8bMukHg
	 uzWxy3qwOyGTURtVXbxxmIAjnyffqG6fe1a7RRiTv2KSPXaeWAmgwk3PnN8UIX1E+i
	 PtJJ/NZzyZf90fKmzPqnjkBdwacew635gimpCNeQ4O49bUqYY/yu4MiRnCKdvdabmP
	 aIldbT2hP+w042ksVowjTQ1edouWGqhYwRDKhvqFa7hzgwZwQihuKa8KgpgN6FjBed
	 Qh1K9dZozXf7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629C7C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170312749639.31736.17544220996215993158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f829b889056e0a62ffe384a182fe389d815eedbe374ec1367f2fa7303a73aea5
Date: Thu, 21 Dec 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703127496
