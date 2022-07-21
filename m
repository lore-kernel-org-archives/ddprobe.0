Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1981A2567
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658391412;
	h=To:Subject:From:Message-Id:Date;
	bh=9qIHWTsHbZpUDLpSD4c97cq5pt9iDXpgUuK7c6BdWyo=;
	b=XyaCKrnpwQwTGC5HIcQ1KbLu7Rb1cUBopdQPf2CDin77tgyvjy1zJBNWu4+aaMHf
	aDz66mJI7dB1erobgO1WwA88zyA408o+pmJtwz20ektI5MQmhLZG3xzxrxFCTJYiOS7
	PazdRRBcWNjdskMc2ZJTyzOPEUCZwqiOxLZI0wv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658391412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9qIHWTsHbZpUDLpSD4c97cq5pt9iDXpgUuK7c6BdWyo=;
	b=JT/KjsFwVy1WwNAUc8FJ0Svs3THfBvQ7KOPsjDslxZI/mZOruCFMzYctgV97kTnp
	QGe4lxXqMR46xkj3o8tUVi3P5Z1v2ygaJS8sBcpAUsIlJ8oQa+esJvf8vMdPcdZD/2R
	Ui6W/D6/G19bK/EEhJcVPtAtLWkpADYr2iCZrsdk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821fd4be35-28065bb2-af9b-42ed-a0ef-8fa69fdc514b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e509b3c765a0f1cf2b5cd0b0098f6197180f61a21595ef8cbc846f80c1f408d1
Date: Thu, 21 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658391412
