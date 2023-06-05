Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68144198
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 02:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2384C433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 02:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685933945;
	bh=LmQhVPiZtRH0ktkAdGPsqzP1ITSalxUKOYuGmyNNGD0=;
	h=To:Subject:From:Date:From;
	b=FFCZI1/7qoyIVIZR3wDtQ5+h3J2mhw268lIsdKu5xeu6Lg9T/ySoLRA2QBd7qSeXm
	 lCV+lP47yxhSNTcuakuTrWgnFMY/odslwickeSF63aq6z2iwcNCZVNVufviRyHJbct
	 XqFEzwV2QBN29MknIASrIpS3rQ+3sCYRCXv9/KeqY3y2fMoppboqFxhut74FkZz3CG
	 VRXET65lPtOLWyHxk0pRQifKlownKf3aYQLmfOP9An3Jv8o67jh1+LH13wjZ8Dzlep
	 nkNkLoum9gjNdhzQpAh58J12B6imYMp9eim8Ior0IvDiEAaiaRm9/en+X1iISiNFJn
	 GZpsknNJuK13w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A9DC77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 02:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168593394576.3359.10277655717694816921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b333f6ea77ac2c664e92945e6cde92632f55b024e71bdc6b9cbe536c1f9e4fe
Date: Mon, 05 Jun 2023 02:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685933945
