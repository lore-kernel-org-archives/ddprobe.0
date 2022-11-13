Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD2F7B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B616C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668321654;
	bh=lA7/YLW2y40+S3BY3x6oLPX2YSq0BGeh0dI6CjYqB0M=;
	h=To:Subject:From:Date:From;
	b=ZczPW/2fYvnNahki+M+MRafdh+dQ4qImlF+dpgReicNtCj1JmgZuGe/etd8qGTyZj
	 Dc4TNPyCSHj66Lcd8jOx2Kae7x2VAb20dVTMgCZwC6h/j7uU2QXIUG7IV6TyEe1D1f
	 r9scgd+nXeX2UCAaSVaq18oDNi85D83728tN+vDFhNZqeL4voeGbOG3Sj6jbR0bXrb
	 um+/ivIjX4NK/mziCRAv064EeylmLk8h+YpoiEFbO+oNksMqf0MP1hIZ+rZRc+FKJE
	 kDhLqSBPPgN3zbbIS830JivVLyKdSCoszFbBCsfQVI94yJ7N2F6dZhgciT+IdKjm8x
	 iEm/J22m44a5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C4F3C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832165434.19928.6935645179934546853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fec1abab184c45d6d1048cb33ec6068af87b2a3d0de5bf6b3aac8efb63a3fb0
Date: Sun, 13 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668321654
