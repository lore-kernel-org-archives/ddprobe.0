Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE522EA1
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 06:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650349558;
	h=To:Subject:From:Message-Id:Date;
	bh=Vo/4jvVspkS4jIJWICeNNL6qfwao0KAk2RqbyvDaHhY=;
	b=AM99j7HuMAVkVA2mUv7Lc1wx7+HPeiuxR79w268NkXC67GoQL76OWTa+300SSvoE
	t0MUolYHG1msj0C+H8SK5ww+eqL9ZEhgoEu2396d6729On9UGDaW/BDt9bOp6st3lNo
	a04xqZXfO64X1JK/E9gt5bM9Gu1fNofOeQoRmAHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650349558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vo/4jvVspkS4jIJWICeNNL6qfwao0KAk2RqbyvDaHhY=;
	b=SQwhEhsMFqrPSQQl/z0c60RMA1GqSHYYSfeXPK0bP4fYr7tTwIqjYC5Ahyh2m2Vn
	9W595T949SdQ4N6ktu+jUcmEgl8NnvANDnYeYgJFhqeh29y8eJGA4FqU/JrvzjKtq0j
	pTBthLUY7sgHnYGBa9CU8WzsQs9DkUaoQYtRQpMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180407fc9ed-164c5774-a84f-483c-82c5-0cab69e8598d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36e93a90c8d06aa38bdf0796e46282c8ee20663cee754fb32a857b7a40d0933f
Date: Tue, 19 Apr 2022 06:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650349558
