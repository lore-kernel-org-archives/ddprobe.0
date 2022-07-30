Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5627D2564
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659175252;
	h=To:Subject:From:Message-Id:Date;
	bh=GAxjM3AH+RwNZZb3Hofz/t3Mrml1u/SclmNQInCILDY=;
	b=R3DeDm/SzO1kdkiO+EVkxaNe/D+S/18dMI38XejHtAnSvugVImQzWcAkmdAMxSvS
	ZLSH517QAeRRi6J7zEQCenldOwJWt/z/OCWCsUpOEzT5yZfd3rHCRIq2cYHEwUpt+/V
	GaULBPewJjFNgqy7U1V6eLnh13IYlJxF/YyB1MtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659175252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GAxjM3AH+RwNZZb3Hofz/t3Mrml1u/SclmNQInCILDY=;
	b=AXhH+QFo7aAfyjs8m16jF2hF7uxUfyg3uc9q6APMo77jQ6qCNXyMvkk1DtaD1Fhz
	L2oluAUd5eB3EHnwJQH1OBVxPIanXm86grD+Jt6+w+/+n8CBW3qaTof6QQNzipgpuJ8
	DQNJXiOY8xWyrIrnGupGq9Coc5eMAt/LOA2Rfg5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e8d3278-74f10f31-3e4a-4941-92d4-4be5cd06f4a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a70c47472fed6fffb9734ac7aefeec8f87574a22d1dea195e29ff1e4c8c3cbfb
Date: Sat, 30 Jul 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659175252
