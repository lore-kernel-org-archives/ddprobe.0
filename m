Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75733D7B
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647586585;
	h=To:Subject:From:Message-Id:Date;
	bh=5/wQ7l8YRJZCMu+noVa5F6yrulBFYLL99C4Y/LzVvus=;
	b=CkwfkK1+4nTZuRuAjydnUrh5RBGJJ2YM0eofdPOvKAOILXWqiDyp61HPpoeMx2Z7
	cND+S2gsSC7s85uUIBK4aAuCDEHZrRfRxmgb1zfO2zdX1KwaEMD9CQFRG+Euuv4/OVa
	42X6R05ETq4UTUgxT9YxjGzZWefzQIHPs/QzsRvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647586585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5/wQ7l8YRJZCMu+noVa5F6yrulBFYLL99C4Y/LzVvus=;
	b=DQygQPsC51RamhsRoamVN3CIJh2bq8TTsdOonwKq1ykODIb4QIdwkabTz4y4KnOO
	F/Qhp1DjzTn2uqUEBqlsoIQMo3APlKtZKA2hGq7YxpcJ2XWVugfjf4cNoiQFxN7ajgb
	Bqbvnf/nxVbjpRX1H1fWH5ZPO1ecD/IyuGRIGlA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bd028c3-e45078e9-9461-452c-8b0f-02ccb79e47bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d2e2b144d01a7a25dda82e25dcc70d20c50b086a568173c7b4c2ca12d51c926
Date: Fri, 18 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647586584
