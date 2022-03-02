Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8BC5ED6
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646251285;
	h=To:Subject:From:Message-Id:Date;
	bh=2rVYhFD2atRiS3mOuavczBVacVgNCNQxo4JtDuvvXOg=;
	b=lCUc1ppAX7Y+cdPJ8QcXXIXmLOmkY3iq6JOXZwcsIGO9/EkqTyKvjEfmRwkcJhZ4
	bwm4P9UMByCRjRe77i4INc7CgmBo77ccmvzBgIPXfTchBZqBteww7ZxvtDYuyqZVxdR
	9NXutCiT164/NdmIpBh26MHR1l21vJEnmcIgGYSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646251285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2rVYhFD2atRiS3mOuavczBVacVgNCNQxo4JtDuvvXOg=;
	b=E+ghGh+onqrFA9Uyv0xq2lk0vUoYzbYDMMNviPz5iUIEO2IPxuCjh9hxo4vlzHVk
	yPJ3uaozaztP/C16QafKiGEYcsABugqO9qjOCOB/dQLQ5k4Hd1KslpJ5M2x/5XptIgJ
	NnUKJNl0BgjpV3FHOAToj+O5gyJEM0eFPy/1sPTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c391936-651dbc16-ef32-4aac-8088-6897c0fbb5e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9fead504e839a0c94c9b3a641c3887619e472e0a01cd024face7d382acc7c81
Date: Wed, 2 Mar 2022 20:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646251284
