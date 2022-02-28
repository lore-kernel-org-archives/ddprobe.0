Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30A748CD
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646038284;
	h=To:Subject:From:Message-Id:Date;
	bh=Lxe0btHxnCDwzXl0BXFyAkX7ANUEJ6F868/VidCFSS0=;
	b=StcM2uZT5xgUIgA3xzcB3S2/upk7IodAN07v1anGyQedShfaHwQiXe1ZAmZ8FC2o
	SQRD2adM2Df620WSO0yG8bU7m6n8q23ffPSunef7kLHTxivnPrEzgU2FW2wWmwx21Ql
	cIesFkdTaP20uo9NxHib4yUcuWPdhfYTsoyBJj2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646038284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lxe0btHxnCDwzXl0BXFyAkX7ANUEJ6F868/VidCFSS0=;
	b=QGNiX7febdcxcXJDXFOE/6YPLg7Lfycz6v5OfoxIdRJXKI5RHYLGamCE2HS8mkfe
	Xnl7F1/MdPRErrZnmNpAuuRcy/DbK/ilLdgSPgS2qu5PCbkCtbvMfpZbCBeBx505oIQ
	4N4ZBEOKnQSE5q03HaPMoZi+lcxIbPdegud4w+f4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f86f9cb-a681beae-4bfd-42f6-91a4-7191e7750137-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 447c663145fb92ccf93dcd3e217038c970d1d84e436f9d24d53a783d4e3ca97f
Date: Mon, 28 Feb 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646038284
