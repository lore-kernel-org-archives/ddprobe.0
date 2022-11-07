Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7A07F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7BEC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667843454;
	bh=DN+Iqw4lvjZ5yIJrOpxLT6Mn+cfqXD+bsWsOohDvfOM=;
	h=To:Subject:From:Date:From;
	b=S743oNpDkkr17PElbKOU6sYmMl701sS49MvgVUkfeiTOQKnlVBWOJpSdVcXTCcE1z
	 JLkRHDhunRghdszvxg3avHr9AY2vKIIi0FQIZked55VurSNU81zwavhzUhpqB3RNT2
	 WaVSsbHw0lRROb59Vkfnvak4PQZj+e5xnmDWzUyjj/2dV1pHTF+hI/Sj4K00jxOuoo
	 tu9QBlOegicOkaIbsAnJyPYcNN+9ADusmEje5YGnSdmbOKMDHZB8DsM5XDm3j3WkcO
	 XDuuLGq3ctuf/fkbyJ6H+O4ahVAPtAKHT5GF0SokRURGsiAnYsl6uh3fMjpJWAmrSJ
	 NFG+si22n/3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5699FC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166784345434.24286.5616960851275348696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3eb88879d8feabdf464121cdc0011f25710eb9ea69a3a583d3e79ec810eaca
Date: Mon, 07 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667843454
