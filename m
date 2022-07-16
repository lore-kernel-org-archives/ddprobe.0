Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21293362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657959412;
	h=To:Subject:From:Message-Id:Date;
	bh=KLdcWNtcvP509bQWTu7wekCclAnrCUAUwB3ueWb2Gkw=;
	b=aTBLyP6JJ7HUqj43DlP8Xzq7K3fIjLAl2TOAdJSSMBiHEyfpNsyfNRyGHkIha/x7
	+CgBC4jWAvSAV173uwoQt6W7/HQ6m/gLGZpN42ch85xgVZDFCKhe6tWW0k+hwfvJ2dM
	eXUdVycS1M37Za+/+4u2SET1RA/dpbSoHhHURZzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657959412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KLdcWNtcvP509bQWTu7wekCclAnrCUAUwB3ueWb2Gkw=;
	b=Q6vkta3ZuBZ+iBYLKV1H/g7s0gl4QZWV/MMoLGTOwkev4Rpt5UAnh/N29ervCG/F
	HHIsJV0vU0cQHPLQaZal6hRBKyEEuZr6GB/Ru05a+7jat6S9BCK8gdb0gSHdTRoVeSI
	7Ld/LB09gfsHD6O5cnGMkpIzVuTBZgUlrAoF77Xc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820614f260-7b4b396c-b757-44ab-afc3-a56c83fc3af3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 966a8fc0086a1434cd904e6182aacd7e37ff86b8720cb44932555ec7c06df841
Date: Sat, 16 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657959412
