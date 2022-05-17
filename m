Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC3B10E8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 08:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652776259;
	h=To:Subject:From:Message-Id:Date;
	bh=S2CljcarJDvuzTQIC4Y3Jvbob9C0ugk9ygnGTVHxwjA=;
	b=XIQR0tUonUdH3hQMsBeySDX1DV/UebDnDFjtEz64e13z3UtpylsRU+U37rbQUwp4
	cGSQI5NVFlvWm8ltj1xKoBhbRjZ6zAUEcb6hJn+TehZAoVwyUJYZMvsBOWR1qs+t5oW
	qrqha8MODS3KVhBJcSKpixROqXwadEdBq9b974iA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652776259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S2CljcarJDvuzTQIC4Y3Jvbob9C0ugk9ygnGTVHxwjA=;
	b=SaKVOJcy5iA/vCLnwJwqs6q6/Vj/wPMT1Tk6hcLo3GkEfaoPiPP4ONB/ArTxqjsS
	+BKgb5RQqS4XG12+3N+tsqsSSK/rzUAYaZhohDTOLzAXP5ZDIzWJaPeG1f9ah0LZ4cC
	HyTIsIJQRp8MN6jaPSEupko5OSywQq+kM+GnzZoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d1244f5c-ce59e91f-5a31-4356-93bf-d3f6381a11c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31306b9d8dcda8d3a5109b8f8719f56b3e6fbde5fbfa3904dc9e810ee1f54255
Date: Tue, 17 May 2022 08:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652776259
