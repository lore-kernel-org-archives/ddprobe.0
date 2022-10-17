Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0706410EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53FDC433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665989453;
	bh=OUwXpIAo22fexm47Kad0eRVsF39ww5AyHABP3IFat+U=;
	h=To:Subject:From:Date:From;
	b=I8Vk2HMLixhEXrKlcivlpthkjPym0we6HTgnivG/r1p7Ym6sHZjREOX+X4KEhRRF2
	 bN6G4Xhy+GTU8ObFs26DpjhT4G/MCKwVCJxY1VmvIPIWf6CoWW/d294pRDv3f/2vZt
	 upuN2tRa1D9NXX+I1b4mFqiKNY91OyK2sfu1ASa7p6Qrza/VgxcmWHrUofy/A6y+bg
	 wsU8pyiyVv51wR24NHdX0TH6Ok46i2c1dbvCc8ryaePiaTL2FRYcX/NORDlZPxQ3TO
	 XXGBNzwhCVdaQ7YhqdimT7PCJaqhf1hEeo++p3Un2I0pLvU6hxL3vFtxSib4m8VbwM
	 vOWmkJVDuxTrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B127C3A59F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598945347.22368.7474152051840430292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456ae087bcc3081a6b9af4ab5377e7b87d1172cf39388d0f743c0e3fc07f6e62
Date: Mon, 17 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665989453
