Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5119D372
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661058052;
	h=To:Subject:From:Message-Id:Date;
	bh=JeI6/yJnKjxqf+BaraAvdwzmtNzbfc8uWwJQDsth6U4=;
	b=gnCPPXWpcmFHU4h2AilPxTvcGEQ0B0HPswSTuowIFR0UeuZ99OuEQrkjJnYFL5gW
	QG0y6Ng+Y1l45d9M2V/WEbfGjvYrQNoxXGSs9+Wn91JaxZqAGeGKXX9VbzL0pubUtY6
	GHHFWjiqqfLvuoTGYoOnM+P9LbFXkohO2wEUm4hA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661058052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JeI6/yJnKjxqf+BaraAvdwzmtNzbfc8uWwJQDsth6U4=;
	b=R2PNh2ZZZQs4Z1Wk78SE9cwyIq9YK9h25zpCq3H1AMJTtTswPgfn0gCqP/PSD5yN
	DiSP5QOChCwi9pLXJVbBWnzcfJBzuowLZIlb0B2Ln6GliY66Q9Ku4dxfOamLj9Qe2kR
	Sok3COMFC5vvkmk2f48fayareihbN5eQpNwWCC4M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bec67214-344e2015-b966-4141-8ab0-e3aef30d868b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcf2a4fc7707ffcb4540be23da344cb4389f683964161f304f61c5091a396d55
Date: Sun, 21 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661058052
