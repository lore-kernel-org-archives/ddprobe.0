Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B0C29AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE35C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663138253;
	bh=HNdroszJgnCVwn5cmNOSMM4i/v/t4QrP3bWLfbnlz00=;
	h=To:Subject:From:Date:From;
	b=mX3z0GOPjmkKda5AfNayNu5rMvBWXkX8BMd6BuqdOKe9WwLOCzDLvft/tuvsDWhao
	 zJsQ/XOikmRQTcWwuHdiCQ5GV1wbyM5km9/AN1OGLVUMLjOx5fTRFlCVA91iEYMxIn
	 U8uZ6aIIbZMsKy2STVK7zRIXpPIeI0lvUO7JGNOhPzPv4BPb9c0Yer+af+1Uka5MIP
	 CBcbfHkYs5Lv7dpsUClIO+fdf5px5Fmf4PbboQNoK0LfKaA9j4pR4HaHHXR4a93g3E
	 vMwJJLtrxPMKmi4GVJFRnjmpGEkKKI5ikliK8HaaakPJW9hzdjV1bg8Mwy9o3JnSzL
	 43jpKwCtS3AIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533F2ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166313825333.28372.16473230653430850542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf826af48f09496c0870313a17e356f725144bfdb425af669604edf0844fd08
Date: Wed, 14 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663138253
