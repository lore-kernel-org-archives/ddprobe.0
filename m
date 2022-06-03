Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA4010E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 15:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654269959;
	h=To:Subject:From:Message-Id:Date;
	bh=kBvUMzjJnSJNuI0j0Rifc8eC3X1fINDjKuqAifS7lyU=;
	b=XCDTSRdQUHOrv7C8u8qrkgQCmtcf8LKWXjks5UNpK3ZZ/MbwmohZ559Og8WWLdvW
	hZ7FEly0RIo5nlWwVFKqS+eU7Z9EvYmdebg4WYXCxr+mvjQSjlgCYBdtRmSdx4DA/zg
	m4vs+PnuDL4j7gBzJAdbSdMw9ht+asBPsCyvFoyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654269959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kBvUMzjJnSJNuI0j0Rifc8eC3X1fINDjKuqAifS7lyU=;
	b=OE9yVdNTfXR+npHLxAcgCaT7sSWNa5e25dyBblWfU6Sn47OSEsLfPKdMbcLoYpqQ
	Zyyr+2OI/FLQF1t5hmImrfpFhRsczZoquXA1DLvmKK+83oC4YugoE8v4f2Y82Z7Oh6B
	SOYKR2VBLpi17nbjRTxnvpWe1I1AtzvoOAqyeecs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a2c5c7c-45928921-df70-4ed5-935c-66d881d7b284-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67cdd992d2b6ff1ceb5fe13037f163721d90bcee47b1727c5ddc0bcd4e6f7d2b
Date: Fri, 3 Jun 2022 15:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654269959
