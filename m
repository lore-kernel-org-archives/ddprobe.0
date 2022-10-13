Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B977720F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72889C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665644453;
	bh=OmiHS6plOuvv1DHbMhCJ83SXCIGBNiGE7Mn2CtDwc4w=;
	h=To:Subject:From:Date:From;
	b=WKEQtNyki2MDHbGyMaMjWWx5MVdAaLSq1WOeydp0zkMVHGFv5pTzJXThHejV0uExS
	 o1LcqW8HhDVEUJyc1Pv0R9XeRGklIRF1Bkg2UZDo8iAfV+Y/Vqff2g0vZzmOty2ycg
	 zTmO4+RaStr7ZDHxtdauMaiwVFFj0as0/+qdVAXg6lhJmK9kn1lHxjTb63RClZOKha
	 ozG9dAgFUJe/MXNUUEHAhPmmDIXJ+lhmn08cuVfIbfeXOeTTDBOzduZQSUzUBOrPVz
	 abtLsJ08CXjGxHVkhyHMdZF4u+QqRS4DvFDnYjcL8RBYzVt/TtQ1JsQceIYsP91Z7E
	 LcF4fGarVuNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B03C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564445333.27664.8099488018410988810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d967b0c7784c4bb4673fae377585b890dc25266e0e9f4428be733d77cb9b0c
Date: Thu, 13 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665644453
