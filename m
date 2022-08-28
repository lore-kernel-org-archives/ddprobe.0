Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ABA257E
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B254C433B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661679652;
	bh=JHuit0qD73p6zRCUittA+MA+m9SZPIppHZbdjwm0Fuk=;
	h=To:Subject:From:Date:From;
	b=BBbiK/Xef43Tj9El6EHA05qsVuooSw+0CUnibrm6+i7zIqt0W8WZhZ04cRWL1rMUd
	 4VdU4nGjSAqUxOWOLtqEpxiB7SCmlBq2YrCBojsk/X4qCLjc+O54I/3Frv+4Ep1McF
	 myYXryE01+1s9o+ongp1YyWSTPwEP26EeiW+7jA3647wjlDit1ybK76VPrao+NOzPX
	 V4XLEznVlmcYx/CrD5d6SDCB739zskeFF3Gcp8FHg394cBTNUENhth0/uE0VIyrnDF
	 PkFB+znySrcBNuUIJLQjqmDXa3gZ8Nwwoko+IwQbIlnDHqHcbb0wcsPSI0ExyTgpvN
	 c5UoEFW9AUxtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB65ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167965234.25663.11307967309539896297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a279522c228a9efd280a70483192efce80656ccca25a71897d563f5d2c6e10
Date: Sun, 28 Aug 2022 09:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661679652
