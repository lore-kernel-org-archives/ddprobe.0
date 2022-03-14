Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E871B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647271284;
	h=To:Subject:From:Message-Id:Date;
	bh=b5lMlUCMRXYH0GMtKEpbhWLRjWF6yJq0asw8Flb3vRs=;
	b=co1gUR0sa/+KUV5QIw+dha4AFC+aPzKhdgX8acqu7bLUlTb77m9tf4x63hX5yN/o
	Fs126zQZyCAWcmnPkxmAp1OgEMrysROA4ACyOsqQ3shEPpC2Jd6HwQNHaXP3ryw2Q6S
	8WJxcz/EigOGrq32lAClnltcq5qVX2KVzYyzV+EI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647271284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b5lMlUCMRXYH0GMtKEpbhWLRjWF6yJq0asw8Flb3vRs=;
	b=W6ROwpXROB/0MCVJYIthtMYaGX4SNG/Hv2VM8NTne+N2mN8pxFRAUEYHCApUtrKl
	qwXcNLvj/9XFJ9yjuY90/xq+TgQK2ZkXWlLkhLMyoGkXMqkoSCdfw2dN8r4wh+E6ahP
	mSz5Tj86hI1uaraj//g5VaVtnMuPbyIuGkcMWfqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8905103c-5f004fa8-81fc-4534-8047-d800863b8e43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72c1d5547e51d4549926332f0a68b2bbf9ed381cc2ad1a98a20c77f6bb74701d
Date: Mon, 14 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647271284
