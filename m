Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618EC17C4
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659265252;
	h=To:Subject:From:Message-Id:Date;
	bh=uBc7T5cypSZzVP+LBsi/Gz2stoISnvatJj/H6cApFcY=;
	b=LQpVYWhLIv3IN2ZGSgApU3JllDeRJgKeVxM5L/qt/fDNxyQmJUn5jwyZE2Iv9b6p
	/yQlfnidDWsHiXtqW5+8iZfJKp3ekWDIKNaQnzEp36Rkuj7lbHY9odzyhc1VFTEXaRn
	VrHdogKakgqvNBofo1eeTuOCkSL7gM014o/qde3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659265252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uBc7T5cypSZzVP+LBsi/Gz2stoISnvatJj/H6cApFcY=;
	b=j+IrBTaILzEHu1ViIrsb9xRRuq2h6oOic3htde7U/zz6Jh98v2kVmes+tkTRHGFw
	SfrHu0sjdgedCWgB66JAapJV14Wcp0dZY5G5xLSiQAMGzUE1KnIUVvuxfj+jyPmDANQ
	3T1lS6NmMcIesjWhnxWFqU6fS4N1V/BU95aIM4IQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253ea7cf4-e700887d-65b1-4f7a-80fc-39a2b6893c74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 588e3b3d7e40e5dd5b5e2a80de94c8abe51b9dcb8f6dcdd643f136d8cf64c0b0
Date: Sun, 31 Jul 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659265252
