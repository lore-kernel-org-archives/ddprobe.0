Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C487F
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWOsC/NN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D897C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702090096;
	bh=ZKuR/6RNB663uhQAJtrVt7XHwHtfP2PAXA5deNu1OUs=;
	h=To:Subject:From:Date:From;
	b=GWOsC/NNXIeXTerKRyRQgN5flFeINm8yjl2zip3LwixrEUJbkcFJ5qwCsVIZdqIa7
	 Fq0ml83s6muyc0NVSCQmKfAqiBsLUsRY6MGF9OOQAeMtNbinGhEmf/f9uFXip57eka
	 bEd6WvFOX6CvQdUp673lCm48Q3BQH1vJ7aunGe5fOZNrNWPtV4BmnytzUKrd7HXbtF
	 qcVUzdkz74b4vs2daBpiYeDvj5fCIQqsgLD4kUM52qJk85tkUaYft/8YOc09dtZ9Op
	 tm6p+rZTi04og27Et9s5Dl4LdDJmBWXqAzU03ITl2JD7ZZBRSLy93Z90R2t3WgdL0X
	 BEVP+AlglAOcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DE1C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170209009638.21248.5402980360423674289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faea5254c27a59c6806f378f874da7b8bddbfde81a313e10a7445b8a942607d5
Date: Sat, 09 Dec 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702090096
