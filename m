Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A30649
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 04:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC637C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688271248;
	bh=ssHKygH7W72/0VJc6lBmwZEgBwe5mOxFey2Z4DGtAyg=;
	h=To:Subject:From:Date:From;
	b=bmsiNP+NBdguuibyywiLZQ7UFfPFg/x3Fsod90sQLV1T3J7HJJvc4QwYCXM2RFkbc
	 xhnpSBoH3lCYVTZVcDH98NMf64ahx3ySrX5HH1/hzq/lozFHoiI7Sc1lHc9Lf7/1Jb
	 4++/5ZnhNNZ7SEcWEGr9DJQztnxrzEcCQ0AxjVoKbR4MFcUox1pYVuyx7Ebbgf/2sz
	 E63g+rT62FW9suA9ndzUGkS3Vq4vcQ14NInGQgr2xi9PPZK5ML2yA8ZrG9bBKVh5sL
	 YwgPIN4/RckJ0fQgdNaD/a9eqzSVEglCT4DpUdbt8e9Fkq+PdRq749Z/CpG8Unaw1o
	 uI86EN0RywlKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8C4EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 04:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168827124870.19004.157542338092474939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ed450ef471b88d3154d6581d5604fc873397ab87cf74a880628c3037ad0901
Date: Sun, 02 Jul 2023 04:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688271248
