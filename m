Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B57D17DD
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656968812;
	h=To:Subject:From:Message-Id:Date;
	bh=G5Y1zL2TvZzFq8Kc1qQjPaqAYBlOmYTfAO8hifU9nIg=;
	b=E3S2cC7qE+j6c+BKkPz08IxNWBGYwT2eqSpDTc738eRDi46Uis2NyXyXaA2R9ye1
	I+vEiJYOGNJJ1ibR+tJmqBhdzY06EnmrODIZRdXUQeptddvjPdF7e/ItLgh653XYMsE
	qdNrp7jYPpCZG+llWLKD0f5I3Ch+Py7ECukuf7/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656968812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G5Y1zL2TvZzFq8Kc1qQjPaqAYBlOmYTfAO8hifU9nIg=;
	b=B1ScvISLQ0hoYIhdOchhkIKi4/fVVhcGj+0dijrUq440LOUNh6VTvyAvAKhjVwyg
	N0AjOyAV8SeazE7gH4tBvDGe5EGyhB2AzsRYeQxfuTzQrgwNrX472N6zpTi9I5nmqkx
	JlAQy4tR3FpsjQqpLE+0celJHBNbEtj19o9pUAUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb099716-015846f3-03ca-492b-b05d-b74c63108a0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33f7c38d68017629436a60194eaf5ae5233ba11282aa870c19148586dd8123ac
Date: Mon, 4 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656968812
