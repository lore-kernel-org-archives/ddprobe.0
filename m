Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D450A10F0
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 07:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650439558;
	h=To:Subject:From:Message-Id:Date;
	bh=6pjaDjSid4s79Drkv1YkVajOz8u15cOXAkzFhsv96MU=;
	b=IBS5kuvvQSkHqhFuDnK30x0joHDx6m8Ui31JCJoE0GII/5W7SvZN2V/ZBzyFx15a
	nCP/rBA+gH1xrilTa9J5xSGWNEUieBHLhfzloSK5T0lTnVZsKtWsdDChVghteZ5Hbog
	RDvLS7r6KBF+2HDtXVsJbiuHLxwYufEwR2II8YTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650439558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6pjaDjSid4s79Drkv1YkVajOz8u15cOXAkzFhsv96MU=;
	b=Nk/8Yqx+YMtHuciSBuwAi92JRqdawY5VfXe4SQ5H0ZOkzupLiV4Vh9Rm1WdT97WR
	0qivqCTsSU3aOuTdguOLf7lxK6/MO5/haeWiytURWIBXW2fsqJtykwVle30nq76xatE
	qIEG7z2ie806IzrPMiK+U+zCP+hQH+nAh24K2BsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018045dd1482-bc9c644b-e92c-49ad-a42b-e41c44b5ed47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f10ac0303c6a0ec74d14dc5261725b5f0d0c142c6e39431d36e55824d9c25d91
Date: Wed, 20 Apr 2022 07:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650439558
