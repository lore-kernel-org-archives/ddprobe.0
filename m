Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39054627
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 22:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEFEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 22:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675204445;
	bh=PUcJ9NPcxzuDifoDnv06t4EYgtUB4TWMdeSSBu/rR8Q=;
	h=To:Subject:From:Date:From;
	b=fSxIoR8VcD+dRBd5Vy3+H+9GhYYN7pJB0PNOTYTWfvz0eQfnwfciB8DcsjbePgiB6
	 33VoFBxC9djuXsdCEu4ck+81N2CrJzshDMKVQwFs14ve3BCed8+Ii/iqZOeEgyhEe9
	 CEfvOS7H7+C4kcEeUDCpLIQXS/LCdNHp5KZ9T3kDM+Z3ALt3g/zPVC5Mrjd4ht/a/a
	 NaBCx987M8Z9vDzY/u/anLlnObOoZhrs+BRG8btREP+J0O+cL1BMXtNjoEpNK4fWOD
	 gGEnHesPzZK2i4EfFatO/YiOb0L+Y8BNh5ghuzDkTZKzUZPD2CWLASlzWb088U1pE7
	 YWbTt1v6qsT/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C39C636CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 22:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167520444579.31897.2414226362691999376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464a1f51edbabfc386b74286d82aca4f2e0c41eb85cd6338ba233dc97ae28412
Date: Tue, 31 Jan 2023 22:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675204445
