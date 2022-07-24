Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1401E33FA
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658695012;
	h=To:Subject:From:Message-Id:Date;
	bh=0pWdu8LFpsVa59GaQLKALgzrKV8dZvCz1fmm0pa6tuo=;
	b=SbRaE0mxD584Ak7ifi+2PHjOefMG6CMyOzYfBRIThJ1PmrRfptGPaXJwj7+GAEND
	PraE6SkcdjMKRO28d/FvOirgPBOM62AQ1agC/Nx8LkPFQK/05TzCXJ+j+6CNe6nJ9Vx
	yjDfNOTCJYweRo4J1ZjkJZkUHSq7VYADo2MbYUw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658695012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0pWdu8LFpsVa59GaQLKALgzrKV8dZvCz1fmm0pa6tuo=;
	b=JfiWtDRBX1NdmIH/BR1pcqfK8W+kZAusdD8dDyWSeCkhCowTpFsZtLdZIrCs5TVv
	injfSbwb6BkWRpLofBnlWQLJSb9T9D/Rv+O1zuRJhB/fz3vC4Qt1rbYqG0q9A2TvlrV
	JPNfDe6hLR24InVD+Ue1h7hYEA93F/mMBomJU1g8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231ed4f81-d010d840-0527-4953-b74b-f37041418449-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8076f1c7dce7b9107eab160f709ceb12c09d4d20ec85e2a94c562029771c44cf
Date: Sun, 24 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658695012
