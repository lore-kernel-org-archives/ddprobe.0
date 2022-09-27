Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64D47B
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DF2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664241654;
	bh=iumXHLutTK4MRvWeFz9+ot46XzVHsuSVt6qms/W6TYs=;
	h=To:Subject:From:Date:From;
	b=vKYxf2UgtRDj+nMgsWeAVOCSuVKa5aRz9tGGhjoq/H/hRzKA8n0qnr91gGEPgEvJv
	 be4ktqEziSPsGdMIQ0GLdAMWK9JnZ7jdWQTJah4Lhgj4khkzVlHbJmlGoXaSpdyQr0
	 6/yfM7p1i7ajqbKlquKzuNtI2iH9aXNyH9weEMbH+yb8h3XTGIWA30fL2pIKx3Pm6Q
	 Is1E3hP5tTwkbY/wC5zCApNtgHEfyKjPSa4KKxUf4TpwRyBAvERjYl+EPMTIGLZddg
	 FNv0ttZ8EHdBRd4v5yrqB70De0euyjvsb4+faYUrwk/ged9JZHHgoSMdHOEAAbXbBo
	 ycOVaOsCMYt2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BE0C32771
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424165335.11806.4947003398781728736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06cf7a07081bf19fbec1021fb27d0a0a8b3026980e75a4202c4617dea6a7f1ef
Date: Tue, 27 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664241653
