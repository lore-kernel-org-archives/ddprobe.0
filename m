Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89DAC7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 02:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650939298;
	h=To:Subject:From:Message-Id:Date;
	bh=4q9U4O0CketnKOyTGWc5pOE+4ZYO/maXgN1zTY2/ulE=;
	b=dRBX+z2S8FqnCMwtnXT7auL0tWZyiR4ukcoHjNeDKNcGSuXt8jBceky8sSsRzm4t
	5r/CUvFalMvXb4xBlGrttz3/sLf7bm/8K0OSd+oyvcHsEK1657+7ZyXXc4uryt4jfra
	BT0iGD73WO8g5vkmJkAeBZ/QJioytsqNyX+ycB2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650939298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4q9U4O0CketnKOyTGWc5pOE+4ZYO/maXgN1zTY2/ulE=;
	b=IO+kcrcm9Sb9dyckIn0PnxAnR1CJAhfE0Ryjp3gUIzmJGg4ph+xIggG6MSoBw+/5
	qhU3mDrfKCS3THlSVAp7VliElGm9+B5arKOiEAKjCVk3ANneRWda1tseSPaXhlLK7by
	KjQljXTLMmOQR3sanqAOGR8AVPphI+UJNL1YwZI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018063a68239-d966da06-6969-4724-a540-b718e7557382-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6a99277926ce11a3db3c4ea78dc6bdb6b7ad8deb5f6d519d429fa406a9229cd
Date: Tue, 26 Apr 2022 02:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650939298
