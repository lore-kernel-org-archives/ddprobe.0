Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2F220E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647811585;
	h=To:Subject:From:Message-Id:Date;
	bh=1JLDszMVXaiCnPKpFJM8RPeMI8MCp8zBcn/5rRjLDyo=;
	b=mEKq8ijSxA4WrCquENytU6sxMZxJAIap6puE6vZxFLB4PckUJdWs1T71gZjqEUfx
	T0m0KpSzRds5ToiJdDnhube1BvGeEq26qkg3LLAx5Oyncu9VwtQVoc2T/GyxCrC3B7n
	PV65MxcE009nMi23YtWnLEtb0XzRlop1hoYwZcwo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647811585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1JLDszMVXaiCnPKpFJM8RPeMI8MCp8zBcn/5rRjLDyo=;
	b=ICo7gcD15rESwDg9hc08QRh95fyLE1qZ2s0QYOFMuTc6WZfHNmlFuT2G5pZHgIFr
	YIsbs1sjiNylGc6Cv73oXttgX99dOD0oMTYfoW53yr4bZ/soYuZTakwGeMTGh22IuIh
	9Takxcds/IOHptqwJujwNsh9TGwMyJeenshmFOBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa93962de-e65d44d1-d7a8-4da3-9148-09e9cebca543-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7549fd17fd229182d0744d57c4e9878f0322497417dd812c39c1f92a52b6433c
Date: Sun, 20 Mar 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647811584
