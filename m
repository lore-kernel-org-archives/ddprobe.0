Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75DD191
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B7AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667116254;
	bh=IG1WhfEKg1vcRewvF+EaMudu1TpvI211CdGMgTB9tPk=;
	h=To:Subject:From:Date:From;
	b=gtaaSfI6I+EFrXyUchE3ghXMTT2Vi3qcXMM7PFoxduA1ssPce73ruKP5RJcGlC+Is
	 8P0FyNabjJLjsM9fDZwjpTr4EcLsoYHSeG26XmqSmwLEMDL2DXroDgOxmK2SlFJJ8R
	 VNOzaK89fwgGT6M6cpas5Q5wJnV17i5iujk1wPIWs4ulyP5ZsgRsNIK3b+3Ktms50l
	 Zd+KgXXGCBLCY4pmJpGROLiGp9422nKAA/S+97I05oIb8HR5HrSoi8hh1KRYFkbA91
	 +NrYwU3shwaszqi5Vj8r2ZWi0XQgXGyMzp/oFW90DVmh0R8DDPa7qDSsVaf8Vprrov
	 vPtPfR1ffq38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574D7FA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166711625435.18416.8179594679047249708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f5e54c38c4a18ca1d479fd120d2bfb7e06eef35fe1ef461d02e7c2f245ba96
Date: Sun, 30 Oct 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667116254
