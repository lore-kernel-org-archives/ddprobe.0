Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1647A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656410812;
	h=To:Subject:From:Message-Id:Date;
	bh=xlyPzAgJAudNuX4cQ0ztloX1//7i0c8Ih9FoVc4ve70=;
	b=YG2mzWswrUdpV6sWVf4iLa5MEsuFOy1kyEB2EpFsNKBUacrAjkjFgvV+vJlGHQji
	koQIVsGsiO2HeXzmwiTDVhZ1Dx+dTFhorEi8/kQySYTdV6hRDcyLqxvsYxFvfnV2kFA
	+oqZjZqesZjYITesRCCr/hUad+VPDgt1nMiHe9CA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656410812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xlyPzAgJAudNuX4cQ0ztloX1//7i0c8Ih9FoVc4ve70=;
	b=AyF9Qn9dldSu74HynLy/e0J52sNyYdKZILGcmYuanJH6/nC1lTgJoRQDHrABgAu3
	jJPF+pHLTrY5OXSGE15VfpbtwKXDTxRcITEgmVBA1VNq5uhgySd/dioS180FEwwyAGE
	qLiqdLEmPm5NXuIypBLrFFAUyZ/T3xx7JCEOsUdY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9c72fb3-6cfb86ac-c6c4-47a0-b947-ea0b66f5d15f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a47a7f4c55665c49e2251b41058bff7bad47dd903cd8715b4e5f9783367ce0c
Date: Tue, 28 Jun 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656410812
