Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48E67F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63417C433D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662943253;
	bh=ejoI+I85BZpy6bv6sORGNopkIIY9KWFEx+9ZzXZJzA0=;
	h=To:Subject:From:Date:From;
	b=A9gxVvscpeKT9iWpgUn9deS2EuLyMV7EFTngq2b7/j0/vull2D/Elqu4Mbs5HN2oJ
	 B/t0lETT3AS0iWaNCkkV9wP2lhaVB6UKVgF3HSeJnXzxf0nHu979YxFXZ/ZuwKu6fi
	 CKs1MfbxSFGe+nonDfyR+rKlmjfKBFKWLoaBr5JIV70VHeruD2DKABj78fhaQfJmJO
	 ktW74i7jJxCUe1qYX4yrfMFKHUsS26LqDf5swwgyjnFL+6s6osZ5POgsK9tB+xWdYo
	 NAznWCO6MZWa5GTSBg69QEIFmRFVURsNSC153I+0fR+yoRHpSXcpy3nwFbCz1VgRBn
	 SRsLPO/lpqhtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E3FFECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294325331.12102.4487936852562576646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68253403b72844b5976e692de85391a6086cf940423fee33659f573d7a7289be
Date: Mon, 12 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662943253
