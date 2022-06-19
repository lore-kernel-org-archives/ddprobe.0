Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B43B7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655645399;
	h=To:Subject:From:Message-Id:Date;
	bh=YIH6/PfZWNlvCXSpTKddrF4rD49MJcbfhSVp67m5Ovo=;
	b=DDZHYMxkNLt3EjMuRMPZ85LtEEAGyCCNJGLgqpVmbUfl9PgSBpy/t/V7ejaog+dr
	1mA3TcKHfDQJ92b2Tro7W0YeIDaFaIJ1MLQdN3IUUaUsEYGPCLW+ph5TExkXOfq7hwZ
	QrrmLFZk4JnJyyIPO2qoC4iFNj/k/eS220PTrDgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655645399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YIH6/PfZWNlvCXSpTKddrF4rD49MJcbfhSVp67m5Ovo=;
	b=UJOJEopAm0xiJjb5zX0DDSfyiwnfT/O4zGjyeLRatAM0ARE8QK/uWnwTE7kUf3d0
	j0OpkbqntBUbJrkfBeCLqIFRA1vXgYPoYNUzxvL9htl15r9XEOxfcwgVJdSdzU4qtit
	qMsmtck3mb2vNpc+/7MTomlNsQgC2K7s4vStJp7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817c27e8d9-8d7e8cd3-79b1-4fbf-a885-9e3f4c28f262-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c99ba07b64225b863c396bebfe3132a695f29695c60d9f248e08864c86078a7e
Date: Sun, 19 Jun 2022 13:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655645399
