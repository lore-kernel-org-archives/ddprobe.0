Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B28D362
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 00:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653265079;
	h=To:Subject:From:Message-Id:Date;
	bh=1LUN4pSuD9dB1Bnz1IFV6IyRmgFSQkYIepKA/UpdKks=;
	b=P1Dq/Ve5C621HYVWoklWivoWgBa0Q8tXElWu0eMif7DAnB5rbyUWZTLkNSeAQC4E
	CJTSxSBAsHI2plibEWM21U8LZt7Kr3u3jZGAnZd7GiAISaxky/fXkA3WcHWXu/QbsZI
	glASMcNnqpjP2TQhXtZZMac/+PfVJApT/NLl2ylw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653265079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1LUN4pSuD9dB1Bnz1IFV6IyRmgFSQkYIepKA/UpdKks=;
	b=AMDUW6hX9ZuFUUYdDIThhPECeiJK2B2Qhs92fWsGsMux7GLQqGmoZPDavOXTdmFB
	fvCRhNmYGy9WRskpIlspIw8QJc7UOvFW1hjuXwxpo32yNOhWad9vzf/apVBhIE7hk+B
	4T4WN3ylDH4cBbHmrr4sPwy6ksW/r3j5x5USZAVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ee471c05-bfe8c6b2-996a-40c6-85c8-29177e690e37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be32eb88639aaaa6797b9282cedb042a038fc1c4383e16e9485e3a126f69637f
Date: Mon, 23 May 2022 00:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653265079
