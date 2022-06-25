Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938217A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656167813;
	h=To:Subject:From:Message-Id:Date;
	bh=ytNyfHugOIl+9QkNXQS1glfOpmcO4Mefl3aUvbyXx04=;
	b=KYYhUkDHUJllUxV3S2GLpePqTqq8jFMoCjnIJZQ4OcoEuZTvwEeE2beAl7y6AEV2
	oAfJAHn0Zrn1MsOYvYaKvHTIpWnwFpyXzszrHTXmJztKsa86elhS+Lzz9hJJ3w2eExv
	rhG67VEQSu2J4VAb7QXSOZrJev9tQjY2MWqSmY34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656167813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ytNyfHugOIl+9QkNXQS1glfOpmcO4Mefl3aUvbyXx04=;
	b=T8+7JmFdAXwNx2tMuZ0Sq4wtPhxKe+L5tFAy1Cxl+wPJ3jO01OFUtPsfaIelulnJ
	Hr6h0KY9aGqcnX4qeNiiI0AaKzq4yYO+smBXMEXVWyMyRx9YQ+Lm5+X/AVO2FuF9zuh
	Pvz+JnqLG3koEsVKo1jUsPlxkXr/HLJe8AIl4i9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b4b4d14-e946b0b6-823c-428d-ace8-b6571652806e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15f1dddde3c9d9e5d78385e5e63ecbf580633a23c230b51fc8df9bc09c2bed77
Date: Sat, 25 Jun 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656167812
