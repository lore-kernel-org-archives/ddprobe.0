Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD60415AA
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBA1C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662434453;
	bh=6dM7wKUBE3OuW/c2I38iGZQ3pNTNFaxairtw+6VzcTU=;
	h=To:Subject:From:Date:From;
	b=FxakHbmpThaQOSMvQrMWvvZq2vbPAXmoVoV3wFQ2NB5wwFzGWmC9plUhZF+oa5XxF
	 V9uIl3MtmbMhRXt5fDRyJ/MKYVbbdPoMV+XT8UICL0I03YYliP1nT6vVN//iDf9yBW
	 FJTQfZB++h8mbZuvkvYGIn2dzU2f86U78JDOVlc1uRyoIVfZ38qC5CRbFbjRm2M7Vq
	 NpJIyRAikgxx3kGCPhVd888voqIamM9EIwhIJuBxm/N0Tn1+OHS0nro++X1kk7SywN
	 A5AxPJ69WK3ZkFxu1CXnTtOu/M4/N5dV4NNmVu+5rpIvPA7g0/UsVK+NgRQrPm81j3
	 VLjRHVwhd4ciw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521C6ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243445332.30842.1562588309800841755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bb542ed0c4ddf7a8c2426d67a4de00f89afb954fafaca8967a75900f752855
Date: Tue, 06 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662434453
