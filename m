Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C2D7F
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 06:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652770679;
	h=To:Subject:From:Message-Id:Date;
	bh=kqfE6injuJxJ4L7r4tJ6DH+SdEyh9/ZbpiQ9pRIqcmc=;
	b=L1mBXT5W2vSX1B7DNRwq2+RlKNPGrLr4Zd0Hp5VU7bdu8Gt4Dh/UuCgpvqfgspWk
	/lzuFJXHHd9A1gO3DFRt/eBJxo80RfkaNRPNfpSFbfQb9F8T/csdtQ4zuL3FS3AvJg7
	Jm6qGzhUa4OXboZl/auDGBZ6jSh3WuO7w41WWOdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652770679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kqfE6injuJxJ4L7r4tJ6DH+SdEyh9/ZbpiQ9pRIqcmc=;
	b=WqJkiq/8mxN8U+PDVsD+Qwa1EkWf1Yo4Qc2jp+IBZwW28LxwGAdXgtat+KU76sDv
	IivjPrajDivPogvWkFV0qr+vV7kJGp4/ib/ySLe0qmOIJmHPBGtcsIRADFCmt5ijdAd
	gbGpzSxLSiKqZ+5a9le2FewEalA7hHiA/Vz7ovgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d0cf2a08-0a5e1ed3-e961-431a-a32d-22598e29c7f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d8f448786522ce9e94f189c20217034e539bcac8ca4ae810b18c59a5b38a1ad
Date: Tue, 17 May 2022 06:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652770679
