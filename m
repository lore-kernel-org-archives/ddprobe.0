Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980B617E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 22:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650061979;
	h=To:Subject:From:Message-Id:Date;
	bh=UBYmr8jr7llG4S65M0QzjhziNJuqrnh5osQeesZDObc=;
	b=TK5ijj1N7RFiP5Hcphva7I1v5t9OFIMwSTwJxpiZANdajiOISPbl823ZQmc6NNIi
	Ft1rSbx/2KSRLQoHO+qIHP3WchAZ9D+JzB2b2AdgKXD0YfmsEkSzlPrgGyhqsaSHybJ
	Zn4Aftf7G7CrpVWVILmYbIjinMtn4gJc4OrVbOKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650061979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UBYmr8jr7llG4S65M0QzjhziNJuqrnh5osQeesZDObc=;
	b=L4fpC4dmlBlK1rROI9DFDIay0/plqESytfuiim6L7Xj7U6KO3dZVZqPu5IisjSEq
	jBMaQlqmiDFU5EnL59Np+qt0I+wSt2BDIv2zFB53ZdFiRRQFBuBWSOhSYeSKX2XxfHD
	MnXnxQ8G2APN9pDINpFY3A05bV5vJX2JPNr6IRF4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802f5baab6-2aacdc4a-23ce-461e-8fa0-fab1f0fe2fd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 629d66ccf1367ab711148bd693e977a4f62129bb1a1dd9fa26d94f7cd3281fee
Date: Fri, 15 Apr 2022 22:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650061978
