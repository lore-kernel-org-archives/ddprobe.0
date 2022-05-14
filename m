Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F064229B2
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 19:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652558219;
	h=To:Subject:From:Message-Id:Date;
	bh=C2xzWsE845wWriGarAAPiH07yYeaRO0apMOIsxi0WCc=;
	b=QgszACSOYCp5geB3MM4OGOFWzkwz549Q/MNkgPMzJRaP1BlYOziSlxhl6Fbzyvdc
	kl3Xy57NHKTWDr+ymkxMP6gl5M1XmazXiyQv7aCqCWAJ4AVliHtZqfSRR8Wwq8+7hhV
	ypxP28DsqjZDZ3CPPnilwkFfi69RRsHkMxJ7/DaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652558219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C2xzWsE845wWriGarAAPiH07yYeaRO0apMOIsxi0WCc=;
	b=XhTEU1P3MQhZ/pb7BNf+0ixnmTPqDmFOcu25smPAWAkHzugJagL1hERPAbVR2cqu
	X0Tx5yADLIQwVN2U1sY74nsAFyvmX1excqHM6ewhSrkfHDl8IKAgg8dkxBcL/pBogMx
	wTFS2R8Lys+7Znjb63LctiwDIawscTbFETtIYXwQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4254825-de2a9166-14be-443f-b365-3f5c1f35ba37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 025913375638b65648197c65fa04e2f3011a65b86f75f029eb0cfb9fe3489ece
Date: Sat, 14 May 2022 19:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652558219
