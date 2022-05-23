Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1141F3236
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 19:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653335759;
	h=To:Subject:From:Message-Id:Date;
	bh=O8Z7Br7TBtmN/ivb3aQDKj9yPACYseldEXKab7trQOQ=;
	b=k9j68t+KI0kUkSErkkm1VwCLeUd0rk0ZAsqDEdIHH3PG/ZO1LcDhQSR93Bn8P4yZ
	PAkDs+s1qHwxy8b7n47BSA7YPcORfT9aUhu48OeWJUzHGAaC1X6X09glRS67TWfKeSK
	E/R3eTIMRiinMLHANMlsRY7msnFqECx4iTi6+s7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653335759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O8Z7Br7TBtmN/ivb3aQDKj9yPACYseldEXKab7trQOQ=;
	b=j7HQl2C8glinZ9U5aYq37CVmdNu/w9amSWJcCZVvlbslE5j01cknj47fD8NiJqNY
	zlBiWMgdgIgcaIcllWa0oN1g6I7cV3NgvbpvI+aeH8hRayFQUz6h5VhtxfDs4wf9HmZ
	dwYQT0xbX172U7/Rqi+jiX/hn08U8IUeCiO43Lag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f27d9980-5f55419d-32fd-4ae8-98c7-8ef6da16ac6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecb69e63bd35ba292d94d41d3ec1053e6a3b58563170217e22e70cb82339cb1a
Date: Mon, 23 May 2022 19:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653335759
