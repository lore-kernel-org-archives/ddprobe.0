Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2402917C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 09:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653038819;
	h=To:Subject:From:Message-Id:Date;
	bh=JDXKjo7Fa/uLmOFFAAcv0Go3Cz9hNqY6QaX0ByAlWUY=;
	b=Q/AFF78gqy83FlHWHbldAyIZzLFKYQLd8E4jifcybWKeF+htGxvGMYXJJXQTUq0D
	Hc5fgn+AM5WkM5FG9rMJbYTXTn1i20fgTCfHo5DzCHf5H0qXyH21PG85ak7ND5Jpb8Z
	u1TCiMv2F75eaYqOd/chzTol01UjPslJWgWsT260=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653038819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JDXKjo7Fa/uLmOFFAAcv0Go3Cz9hNqY6QaX0ByAlWUY=;
	b=dkwsYLtCMuHNTyehwZDuMlYPye38Bo8U+3u2b6cMadGzHEYT3oaAYD1VAxQghFmj
	k4IivIvfY8/Iz6IumTii9rJMAYFF7JTV/lHzK//ws9AEIfa7wXE8j0i5xdzEdmaDB7T
	PGn+SB/IIEXA//iaxXeLW8vwkIITvQL6PbMc9QyY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0caa7ac-38f30d89-5fa8-4f3a-8848-edd3d6427b11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a98549b3fc3fa6a26d4bce89f5fd14162a1efe19c9aae7995497c90bcb9c019f
Date: Fri, 20 May 2022 09:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653038819
