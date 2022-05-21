Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A93117EA
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653118619;
	h=To:Subject:From:Message-Id:Date;
	bh=VrISv4WaDKedtfBKVgWLd4psj3ahnw++a8cNU5SRzK0=;
	b=haySL3wdus2tY4+oRmCPgk0BQvnIW6ZkfT0jIdNvLDwl0AIXIkIaeufsRdyaQget
	olI3mkmAy/tDlpaoR1DadYvIxoUxNYx594vivsA+5epF9usQxtD0aKy0q9a9enHt2bF
	XMju+JMo9ZLXch6m4eVUMf2FuHX9jibo5pv3optc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653118619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VrISv4WaDKedtfBKVgWLd4psj3ahnw++a8cNU5SRzK0=;
	b=NSRnWG5hnZX63XvrncO8P3SIy6Uy/bh8v+7Np5z9P8ySsIiK7cs0+NBti6njy7s+
	DHkIb0NqyJnb7Pn+TJLTpVuQYZ4rJQAp0TeK9j0kn1pIIjww6sGMijEB91XvjU0QZBO
	RTG6c/6z6OCHgUFfvJGH5IEM1alPiO7F6nnXkxFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e58c4e91-2f966bb2-4ea8-4937-aa8e-a2abe8e9be2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f004633f889548156801ba5ffec070eca8c8b578583d7b27e871a984ce0a47b7
Date: Sat, 21 May 2022 07:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653118619
