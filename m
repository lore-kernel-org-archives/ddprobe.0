Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21583C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657537613;
	h=To:Subject:From:Message-Id:Date;
	bh=a3IQHiRKWxXsg7saJWlzoFGChnBcJnQqr5no/Rvmwxk=;
	b=djQ0DkT9zv5pD5JigeNe/tbFPjarSWzV+YuQesdMxMNxxhJf0vJzyuuBJ6i6TNf0
	omQg04xxazJXGRhRV6Tu7J2j5gOL7QLoLsLpLGWrUxI46xgI7T0gZWzJdTyUqxkqhEG
	E2JuLli6sSMkoV6qhyosun/qOCaS98NnUVjPvD44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657537613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a3IQHiRKWxXsg7saJWlzoFGChnBcJnQqr5no/Rvmwxk=;
	b=VGZCXc80dAkiI1uhF95CpY2kMeHeiZiADCjLk2vblWJOQ7AZrdz5giw4rbj/0Nlw
	3WZ5olejg0L01vDjBiGi1U8ZUonr7J+dxG6TmGZBPrKp8X5dXStG8WICK5v6I6N5oar
	ezs8nSzPDHT1KuDs0CLfm5ULBugAZ4zJzVpzOzY8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ecf0ca10-5848353d-052c-47ae-b6ed-06234bd88d05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5f8b8970eee51fdd4c99d71a1e7ab1bda7a3db2f8d42d757700962652283b3c
Date: Mon, 11 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657537612
