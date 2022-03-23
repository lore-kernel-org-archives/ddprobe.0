Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61DB1868
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 22:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648074958;
	h=To:Subject:From:Message-Id:Date;
	bh=y7hyNtJRQ+J3054Fhjx8v6NfVILK9Iiulg1BRlQj0Z8=;
	b=FCIvtFl4vY/qYUJIQNnApRnoEiSycY6mwcjtGv9ROI2jB6QRcu0g+m4Qt/NlsV3s
	qlPX3cxQ8JSnFNP/q7x5fjq1B0bOVm/zuC4D5tgWWDWU9opugQLG9oBzQQRdruMkq0k
	dVZYaYmTZZ4BBjSapGzXU7ZHGhGrXyucTD3Xtis0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648074958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7hyNtJRQ+J3054Fhjx8v6NfVILK9Iiulg1BRlQj0Z8=;
	b=LSa3woKgxRKTWHHStrPfxzIe8kw+HvofWG3ae2d5WIiu8Zaoa/CBD0ICiBZKfFGj
	EXGvoz2OBBFvB/d/TKTKopvusZita0oDI+74WXS+w/opwl1enzUy/uGE6gjung/e1gc
	aMqMHmoLbm9yyfRsqprm+us+IndrJnixQ76ib6DE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb8ec25df-9edd32f7-eef2-4fbd-a071-db9f2d6ddee2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feb090d38ca84603d59b6e9883db7c8272aa3bc7c3b6877d47c136c4293fff6d
Date: Wed, 23 Mar 2022 22:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648074958
