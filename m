Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6C323C8
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660808453;
	h=To:Subject:From:Message-Id:Date;
	bh=rgROWjyfpAvT1kHh0sMXKe0wHIqyWSARP6MWl//nuO4=;
	b=Q+ChgYoMZnLyaV4zehovruwRQzfgmZG9b9XWPWYEC1vRXZK+CupC1+SQPZ2tsVY6
	0VhwCMaLmpoWdNy0GTPvsSjI3iZUHD7DBmhAuwKdQdt/WztctcQgASm5RUstJRLKnQr
	uSpNkWTHKhfWdteNDYhxaMR2HYmkrgCDkBde8n0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660808453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rgROWjyfpAvT1kHh0sMXKe0wHIqyWSARP6MWl//nuO4=;
	b=KwEuhpXbAxSUlXKVqHmI4tA808QzSOzFw9hkxs7ACODEgytD85RyXRdAhR5hbHYw
	1ZK+7TRt8N4AgatZ4jPIpob1bKhGfATDQC76FJMCN0NbxumqDgoIvKCfrW31IgoupW3
	tebvZLIi5v/DiTVBHm4WFFVxF7c4ohCnJFpnybxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182afe5da11-8da0c538-0b04-49c0-ad06-6fe9394670f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c0bde7d8d04f5bbba0e0f904306c7faa03ebf58832b44c4600a0576c2b43df4
Date: Thu, 18 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660808452
