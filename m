Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E9BA23
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 02:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C303C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 02:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676947746;
	bh=iYY0rpVRfKJoOM+uuTRywdLpVeKYcwzynifNDPEKRf0=;
	h=To:Subject:From:Date:From;
	b=MrEVD6ZOATm2dkU32XkV3tHVh7uq2h/pgDlXF7lp22jyGjaHRVeg+gFktUURqSNAL
	 cHm/gg1FkG84PJoPr6w0oOq19LuwViyCRJniVmU2deNw1TKdz48Bck/2alUn+jV1Mi
	 uarsRayOzSHLKeubYz4AoAAPTdifBV3AhcqQ/Weq2jg1PjBREAY9WQ/SyzYnDiWoxP
	 qYVVxqANpsx36NBEUG1BFNBsmp9byyfLViMTYsa4ohAv8BI2JbZK+gnlcA8dkxYRIy
	 nlfQPZe3taDRaERdf7SUgWVp2RvrMLOwBV/j97MhdoF0etEQaEa/NSwtQ1d+GTqxXT
	 16H3lNNiXV0Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1375C636D6
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 02:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167694774591.23697.13352490515277673109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95380dc2b818c726ebbe79b767c4929dcc20569c2cd5fab7d1a3d84d1b6522a4
Date: Tue, 21 Feb 2023 02:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676947745
