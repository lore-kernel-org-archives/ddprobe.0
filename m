Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149083229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656374212;
	h=To:Subject:From:Message-Id:Date;
	bh=mfrQbMOV2BE2wBxw8ezWOzHqK2kQBHeOmeCnNHrIf/4=;
	b=KAqHwyDiz/xef4tOLquT7FsCsLE9igiJtaHjXTLVVsjLQrbrILSZFJGJtzNU8xi5
	Dl2RjMHQIHqQL758aHjh34nPWDJGuMJCL/ivUSZcdU49mwC7kqahO1KWo25On1NkZJM
	tQBaQ5pz26kQl2eXmy1/xBCAbYUkGvKAoCbu9Uw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656374212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mfrQbMOV2BE2wBxw8ezWOzHqK2kQBHeOmeCnNHrIf/4=;
	b=e1Grk3gWDJ+viNfCm+CjxYrqy1cluX9S4SQC5HSW4n/4EdYJ92hffAYpTRaOrM01
	aHylpaTQW7GKFqp1QbYmEgXciYLhKMekzRBLCV//0Iim94W8t8h9ChtVjo1tNCVv6B0
	miidj/k5yNJChgvQ8Ejs/V2i3fZAuuK6R2CBkOrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a798b70f-da6caf7f-484f-4774-8eb2-2534032ac1fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5632b7938ae60379e694245085b0901085d3a140ae525548802b80b0f7e4d641
Date: Mon, 27 Jun 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656374212
