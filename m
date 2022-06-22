Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4475A10F1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 02:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655866259;
	h=To:Subject:From:Message-Id:Date;
	bh=mB9xaxW4acvdnir5ddpct70rROa0U9iVo/lQk2Ahok0=;
	b=OqrEkhhIab54XxCRZCg1kTYobtoCaQ4nOiVmJin4njglAlTru2gyvKiwDb/jAcb7
	YJsRZmnDgFCjwPDY7uomOYiFWxqXMjTg/kKKv0ZhViujJRNJW7GUK7KWNP49/P6yCc/
	qpBbCyNbp/nJwqC2Oqm9jSlImCgHizHMERo/doJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655866259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mB9xaxW4acvdnir5ddpct70rROa0U9iVo/lQk2Ahok0=;
	b=hy58zJ4CJBI0tr8C8DJ1jWb/ojpYETAa00k5f2vqyTpSOEcpMDRNzotikoMeyQmp
	w3MKz1BqyftQ86CqIL5OY4Fz72XlNCK7Dxolo9gkrk5PV/UTDFu2AIykQxMynYsWJ/V
	+6TUhfMYSFtpeR2dBjE6mzs0oDGQgfImBFT0MGok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818951f740-74fe8f00-79d5-48f5-88af-5441cb17e024-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86f7410b7372657e6dc13fcd7b2f649696eeca2309d2790a8990741c3bd5c6e1
Date: Wed, 22 Jun 2022 02:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655866259
