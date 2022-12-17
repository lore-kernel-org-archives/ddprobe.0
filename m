Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCA92F23
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84204C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671303087;
	bh=n3SA/2dlZIChc41DocicVJQPLFoaAoNbQhXkJXiv+74=;
	h=To:Subject:From:Date:From;
	b=nYoD1Ot8maH25n9pLc+waBT8wF21+RxCqR8JYqjPM31JyY6HYi69YNhGaUnAXbFV2
	 BZXcqUXa/RtTusIM1GNtglg26D1+Tas5hSnosf9d11zQGRMrPm6tT0uC5P2l9Z5SgX
	 RRCUwoe0Yqy7zNgmHd46kEktyG/QkndBIH8ndjMsl2m6apkGmqvMUY1ObnfW3ZO6L+
	 fsaQlenUStYUdsLRkGVDFcOvkT0mOGpvLWP4lUA0IOwm8CY8uXXKf/fU/DGBNXpmcQ
	 iRVdf5A8ioxEOC6tK+w1Ex2AuL75JyFbMqR30bLk/Jp/C8et0TQiNApxGwRns25xvq
	 oH12n/CPnbmlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696DDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130308738.16312.3957379178118847614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be54c809e62bc0cfe384646950ce11b9488dac88346c3cada48ae8517d959dc
Date: Sat, 17 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671303087
