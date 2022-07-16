Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595A8638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657973812;
	h=To:Subject:From:Message-Id:Date;
	bh=xZhKrCdB7z9Btz36uV0N+ta+f986LvKLxvObsn42M2k=;
	b=Ml73HdoekCt5+3HSWk5N+MDmJyPl4PGjQlIPGpbvu4cAaSiLP3gd6U4cr+U+SIOq
	4x45bOHxbcZJtviWi7ThRtH+CzfM+Rpa/EHeaGxuv0Rr2UhUEj/zxFveytIQtCL5Lfi
	BCCc0V+aLFMjpu5yQ5ZtQ0toITTU/olkXxceJuho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657973812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xZhKrCdB7z9Btz36uV0N+ta+f986LvKLxvObsn42M2k=;
	b=SV4DHswSvrjxAjx1bi3mpt0f/piCTGrim7nEsOdGJEwg3rUKdAHx7VX/w+daX4AT
	yuA47sGSE4aaTXVyu9o3YezQ28V2b9zGas0i4urs7cJch/2DMJWnZjIRBDC/byrbIEz
	c0V3ymWI1M2Ny6zLay6FslzkiJv3BDODynxVcLvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206f0ac28-69bfb203-483a-4790-a9be-0690711be47b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3f50d22a9ab706dcb51c1b2aac6a05c6d40064e1c0c881048b6fb80513acc7a
Date: Sat, 16 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657973812
