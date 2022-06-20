Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272957E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 12:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655728559;
	h=To:Subject:From:Message-Id:Date;
	bh=rMxaaJOfaZt9DuTCZY+KinA3yRuD+SH3CRbMjNffoYU=;
	b=KlQ9jWGOvUWl6DSyuJkoqo46pGAUSA5fuzVk9idMATAcP9vwHbKj1htOT5v6HT9B
	n52uF6KWf5F+MkmqHmAxKwnmcAWOD6e5zze+7QISaF0+svYpgVHe6kwzYrugZkUm66e
	mh9sDhwoNEWSpP/lrVmXhVtG6x3LZc5ZKuUOF15o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655728559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rMxaaJOfaZt9DuTCZY+KinA3yRuD+SH3CRbMjNffoYU=;
	b=KBkFS6T48yPhqN9YUgk9kH8QM1hFdYOfaCPMOQL74F9FauqYob/OTTRngXcwhJ+L
	ggX0+igFY00za4FjJKPBAS6Sc+GujKRVJehOVEn2slINcjKa4HsDr/sf3joJ2CbZ7mx
	ozPbKBCpgq749D9d1zwYYxfU8iuvpqIIXuX/Rgus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181811cd49c-53334469-29f7-40df-9345-f27d368b5615-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0eabbf439b84c717bf9f3ba2b61e6dae4bfd268f5bf0808a395e1ceb89e32cd
Date: Mon, 20 Jun 2022 12:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655728559
