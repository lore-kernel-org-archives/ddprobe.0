Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D087E6
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 07:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653377279;
	h=To:Subject:From:Message-Id:Date;
	bh=NrxZElHF93qAMf5qaKqFiTIyYr78IW3lt588Ijtkazw=;
	b=Drz58rbTavl3FfpLWMDXizgOVMAf3O7Opkv5QiQZ855TcJw1dR/S596lCWEgO0T2
	ThkXnfAmdTpNVQZBKlMgPCTNPHEZcuT6rLJC/UsjVPpJ7xu0zkK2QWX3tx2ErDj74Ce
	4gO51y2VRCIuMTHnuaxVev9/el5SMtGdn5N14dDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653377279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NrxZElHF93qAMf5qaKqFiTIyYr78IW3lt588Ijtkazw=;
	b=aPVIJ2viKfqOTcBJjwwgffm4etV5DYLyC0KiQgWodDhLkL7PTJhFvcUtb7eWL1Bp
	pDk890gNaAuAanNN7qlV2fQxYw20jJc8PTyrZhPVp7sfFG1LOKMpunnzjFQaiorEpz7
	o8gRp2Cqop0Owv5r5H+nnt6us0KsZV0HS0txR6Ak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f4f724ec-1d5c0200-d7f4-4e74-9cc1-2c1baf61216b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d795ac180c3ccf105a7d74fb2315f6ad65866afa7d06874ff237d39b8b260a4b
Date: Tue, 24 May 2022 07:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653377279
