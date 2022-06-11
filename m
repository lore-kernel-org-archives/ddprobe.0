Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2545D36F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 02:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654915259;
	h=To:Subject:From:Message-Id:Date;
	bh=nXa7hzooIgaaq3BPxsvjDel5ezf7IAiPwRa0r+l97z0=;
	b=i4sFTjlcSphEddce0uKW0oyfVIG9MU2o91OjdpWyxfIDHuF2AfPJDeIdd3ONQs6n
	CKUxKHLPrL5WhfneH0D3cCEMzccXRtOs90gG4UbMqDMHyDDQCKZXO+oxrKZ+b9m5cNB
	+izxvG31Rhb7Jg6OhTgts5We3f+5ZAiBPSFuleSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654915259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nXa7hzooIgaaq3BPxsvjDel5ezf7IAiPwRa0r+l97z0=;
	b=c/0bgl33hrvNPiCg9lqAdksKWEIqKTQg3TiHamHqsmYmcsUEFvTvOaNqiunDKwwP
	/7ggcq+tEsAQ+7ZAuGp59BRmleGLyT7rojTxV4KWDmojpEUs0d4ESPW1idye5OkldZU
	5OM9OGvybe3xgP3Zav6ULWPr7Mf6gRS45YQ562iE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150a2db9a-f94ce6ad-c4a9-43e6-a8bc-898a6d6c828d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64dc878aac94f15566caa1ca32e6377454fa58ecb84c34aa7cffc1e4454977cc
Date: Sat, 11 Jun 2022 02:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654915259
