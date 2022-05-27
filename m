Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D1323A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 22:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653689879;
	h=To:Subject:From:Message-Id:Date;
	bh=2DTF24h6d7UF7bX8ck2IGXdn/twFPkeMgfPA2ChlA1E=;
	b=F8B8DrDI8FZVocbZwhQL85hAnL9WQU2Xzko+XtAx2nSQlUjcp5Rt881Fca/GojmP
	xXSBMH0saHztB58sOGA/Ai3SjrBsNIGA1An8O4rc4qVZwbhuhHM03MFKcUJvAt9q2pO
	coEElS/ZTLyDtUGYWVJ+Zb5skbSLC6YldxTc4nks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653689879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2DTF24h6d7UF7bX8ck2IGXdn/twFPkeMgfPA2ChlA1E=;
	b=DOKFvhNsyVecJufWWrK0Qc9m2WQ6NnJKXFKSQqZlpagwvl2Y+G1FBc4SALII7gHf
	VTaySw15IDzWEn8ITcOVhemFSsczuEB1mYRsf16ChSO1oIy0kFgIdXLb/3tyFlVySFr
	WZLNBO1B+UCP6UjHOcWdQS8a8rEJIevovhHigUO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107990b29-3fbc1f8c-53b6-4650-8c8e-ababf485e33d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afaef8041ee46bbe4b2bf15a91160ff9448dd1be14a66a9da700a5211b620ecb
Date: Fri, 27 May 2022 22:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653689879
