Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A77EA31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647939684;
	h=To:Subject:From:Message-Id:Date;
	bh=r2+bM3/kKgljBmTyYmovAuGwuyAe1IMhHdANqXRXzo0=;
	b=CKZ+OjLWad4t+cMrS9VwfJs94t2/slbnTLeYLl4QoIxsVXJxZwbh8Ni35/8tiLPo
	1jG+0t2a8u9fe5w4BkP5J58IXwoZxLEuLaLlGtmAtMr9Dc/KfwhdbVaZfnFw5QOJ2KA
	gxqYVZUi+30O/Wr86ySiuQR+WQBvGk4qwpzRXTA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647939684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r2+bM3/kKgljBmTyYmovAuGwuyAe1IMhHdANqXRXzo0=;
	b=XSOZ+uLgXSlOzPGc27PIIabrjYQhN8cYOjVA1MQ1ebzUhbScxTd+NswhtGf+c0vk
	Mzm8PEqv08G8BfLowokWiOVYEUM5sX54FWZs6q4F8I8F7phwQ1ekVgfO1PqN4qlEtyd
	4RSUT9s80fMhnZR2uwMw6EuvROqZhLryU2dW4ZlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0dc09c0-971d6c02-5591-4276-8377-804e057bb970-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 436c76cfad3ee231117796e988783b44969e0e71f1d12a4f6ce622fb148b9e5c
Date: Tue, 22 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647939684
