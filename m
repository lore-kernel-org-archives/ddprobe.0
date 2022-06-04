Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0365137F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 14:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654353779;
	h=To:Subject:From:Message-Id:Date;
	bh=tXaW8KvZn2jnmnNBqyGGwQjYhytbVtolwbGHp5GdFuY=;
	b=T+E5OsZ/FSIpJ/aIP3GLrgAIHfXnoBvEWH9O75yMM2ntZ5tH0hCurBgsPFooCTvd
	dX+byZ/FEHD6l1wVCerGsF2CZEERanQEPRJRPcn/J/k0fqJ+NS97Rcize1mfUXS1YkD
	So57r4KwxSM7WlYkMj7lbUTXC31F8seClc8Wc1HY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654353779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tXaW8KvZn2jnmnNBqyGGwQjYhytbVtolwbGHp5GdFuY=;
	b=Ldg5jvAHvDFgk90OvnxwI5o86p9u1aeHmIe8C/0jlCeRvrdQHFlcUibnYXg0dnom
	5b86HrLwyE8SuieyCXsC3JN8UdQbcWQHWYx1XR5syTXA0K4V9xboUkGbyn8kSvbwcQi
	CeDbzToQs4PYGhfth6TPp7B9FGyNYup8IobX0RVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812f2b5a54-54b2891b-512d-4de2-b7ea-7dbd499d7a8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c6d29c883a44fe66fc0f387df41c2d0ae7b3d27ac0b0f1e92f01570d1623672
Date: Sat, 4 Jun 2022 14:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654353779
