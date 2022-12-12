Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2251841
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D718C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670841087;
	bh=IDM3e10afzbt5ECbbr3+NpHSP+bj5tn1K90/p9xheKU=;
	h=To:Subject:From:Date:From;
	b=p1+pi4ZhaCsmm8xYEdLyxR25ClfR2/OQSjXuBKT4G2XM1DYbsLQZbxB/ArGHW57ad
	 EAy8zRUVQc1z70O1G0X6dCb2ikOJa+LCppGrAeWCURbzTcPgi0J92PKJcIC6b553dj
	 I1y14J6RtCPaHvR6Vz0HU0MsiR9QFW2VFtYT9vvDx0zQZ8TY3+zm/EfzvePs8dYezD
	 l0HgMledG6tHWllbcF+2kraZFob9exX+xoA7AsH2h+i/fA2ihsR6KefqX9dlUeRRQI
	 EGBD5yd2Ty5K2IovNjSPQz/ls3ngxyFTP7E8t2kkxIqrVzqsOmz0ApaeIdUwys9BHX
	 m/MyZi5jQww9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640A3C4167B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084108740.11881.4836306712135392678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf02375aff5f9e6dea6fbf055f2a5d4aac9f8713d922896dd6c03e005552d4a1
Date: Mon, 12 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670841087
