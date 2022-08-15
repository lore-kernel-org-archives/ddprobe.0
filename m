Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB587E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660525852;
	h=To:Subject:From:Message-Id:Date;
	bh=QnXCcK20HWQC4id5MTD49qosIh9hyra3SNlaKa/pZWo=;
	b=Ozl1kZsengqo+uhOqLtxaKN2XkHm59ej/3lYnwl298YWjFyiXa/aZ24Si1JNlE6B
	xk5IqVPBUnPR810Tc/TDVeL1mcHmcQmLwLqh/PQm09IN1REl0g9uh/svIGnKQRydzdS
	LCjIFy3bYBpJdppTdT1Jzdnj8yJlPcTmtuj1o32U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660525852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QnXCcK20HWQC4id5MTD49qosIh9hyra3SNlaKa/pZWo=;
	b=aMjqlxsNeLx0BJ6OLP7SJnvOM+u+3fBio1NfQDzmjgUt9izPZPY8w1eOLKkWFrPa
	yBYlv+q5kuRhnhBNb+e7jFQnNhdzO2hfzihu+5ip4LFKHXEUIKw2UILqDO+8c+cQR9Z
	dK8wQFmc34Dnn3cxK1aE/1fLM7AZ6Y+wEU3SJtGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829f0db7c9-19b9ca06-aa65-4298-8df7-a259c18b3089-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffca10c350a3929938e76a8f3f267c6d132943f45dbcf3404f0dde3b2b156402
Date: Mon, 15 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660525852
