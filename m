Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495673D90
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659205252;
	h=To:Subject:From:Message-Id:Date;
	bh=oeVw3oPFOPNXo8q58LL9JyhuZWovzqA1ZHps87A29D0=;
	b=NDkU/AkOrF9qHufYlwLCDmR7D5t2KbC6CPH4/0qxrnZiwk918khpS1rKE51BX3bT
	7LaLe8BgvBWlAaIjuosAaSYldmn+81x34f3qXRkV/HZlQIv1qSmjtuISpS0hEfd6vqu
	5LuQcSioo2uKpK9g7ev3c81DhfjxywKBqppSMpI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659205252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oeVw3oPFOPNXo8q58LL9JyhuZWovzqA1ZHps87A29D0=;
	b=GN9miZ7UetJ1wgwJrlj1KR4MWLtQRLZAN2Tcax6oM6S+0lE7v5X+xnv/6wyjsgf/
	9hbWL6nhcqL7Z2O1P7B9isDM1iWT6s1V7PinOUznGbdNNgJwlzOAmhNeHywTEk+JVhG
	GIw3LNrliiiG8p8YnTTcK8uCpShO6x2qAda+fkm0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825056f605-1843aa0a-a4e7-4e01-9ea2-33403da5320f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 392ec12336a349630b3938a032685a00673c37b0c35b01001c48ac88f73f8fd4
Date: Sat, 30 Jul 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659205252
