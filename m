Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC327FF
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 02:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651113838;
	h=To:Subject:From:Message-Id:Date;
	bh=xrSmxu9kbeZXRGmNBrJEpN5HuTlAO44TpFHRck2KZ3Q=;
	b=OZ6+QL3IxuYpV1cf+z+a4UwyZeBJZi45plpHQaIixoOnGaS6AnxHMe0J5rhdcOhd
	Lrq1DAjveWHeZHgo5fah0X6ceupK6zjNWIQblN41uNM6nWRV5B9In8Mg/HSzaIKR3yb
	Iqa+iTBycz/PoG3STkUDpQe1Ekabc/E3Bs4EScg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651113838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xrSmxu9kbeZXRGmNBrJEpN5HuTlAO44TpFHRck2KZ3Q=;
	b=RuZDxyCf3mkpxhqktu2e9UW7HcrXccxHa/eRsdp/bJMsl7HRB3jQvLhF9KUYgYyY
	b8hSCnxUyabSJdBCt7oFvg8Q4cVpQUYpC0rR0b++Ue89j1L6NJEYckcPtnUahd8g5qi
	++qs4Ma9iJMmtcASTDzAQen8FjF032cNNt41lSas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806e0dc6c1-e5236969-1c77-4726-8065-947080e8600c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed9181c7b1cb1d26b691799d7aef0820a3b0ae31bfdd028c8a564f4dee12d598
Date: Thu, 28 Apr 2022 02:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651113838
