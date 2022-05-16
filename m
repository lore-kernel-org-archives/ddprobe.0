Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AA3ED0
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 22:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652740619;
	h=To:Subject:From:Message-Id:Date;
	bh=QAhTYRnY/bm/T6i+CdHA/A7C2S7Ltqpi/auxJNm/EnA=;
	b=BGjq+2ST3GqTAd0oeQdBSDQo3c4h+smtgp2JD9WtlL9p2kF4b/7aDcWkGNS59d+D
	oavKDs+jtVciCb8KpUOFafpdu+KnvoyB5bgHzRMO4ZyRSlPgRxMDbD8CYkVxHqCEdqk
	DKMx5uqB04I+OFZ4nn0fkUpE/zXBw/bwhS/RaS2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652740619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QAhTYRnY/bm/T6i+CdHA/A7C2S7Ltqpi/auxJNm/EnA=;
	b=HIcvBm/fAcC+wFd6oAeaub0NCO+Yrr3OnR7Uq68Iw3f9rHAPMmRxrIIfEWm/0qC6
	R6E8ySBRjWwrCHphPMSrn6tBO/zvu4GnMSPg9jO37D8p0VHY61BDQ3CCN+PcEi6Gd/D
	eiuPyghpldjxdS+0sAmUNx37Di4dbcvNbLyrb8/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf047c01-55582fb5-b348-4631-9f17-fdea085e5fd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 424584e3c43fc45867ca87740b2c0477a48e6e0d86f433a64b9fa07197bd14dd
Date: Mon, 16 May 2022 22:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652740619
