Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99517E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656482813;
	h=To:Subject:From:Message-Id:Date;
	bh=ItPZbcXBlfqHpkENVzbrHzVPNmM9T7KoDzvnG9Ouqj8=;
	b=ePjzsmZIZxQkZZpAazvFXzCk3UdLXaVye44Xo0AtzswgvmXxovsbv9dyY3woK46H
	R7PxEUOI28xxLw42aNnqpjjUiqkFc5fZm0mfnU50cwmCnDqro5AyOlerPvv22ip9Lzl
	68A3jfcritz9p4T3Ro+nk7CdRUplF3Jep7/1+hj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656482813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ItPZbcXBlfqHpkENVzbrHzVPNmM9T7KoDzvnG9Ouqj8=;
	b=hRfOM8ROryyS3OFdpRozjm0Vf+++5XzRuSE0f6Ns/QDqxxgUDw4k3eEc9KLvX2XF
	fS1zMq4HWYHEgBjGdjKs/GkkKDHeo8+I8gUOBT8yBhdQ7LWhKShd7K0U0GLxw77/kfc
	HE5p+aVoaSm87gmfNi6+k/lFCJMw86fDceNgmmX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae11d14c-ed5b81d8-af51-425d-a1a3-41a6de50aeb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2aa7fedb7a611e498e8186b6e88849e5ede0261f5c2fa7cdd272f66673e0af4c
Date: Wed, 29 Jun 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656482812
