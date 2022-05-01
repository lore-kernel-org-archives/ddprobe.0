Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376E723BE
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 05:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651384798;
	h=To:Subject:From:Message-Id:Date;
	bh=oJsZTvJGQRgdqaJ65iLc+QTyJAFUO5QC4pCoQwWb1M4=;
	b=aktEbm0MNUPGh8EM3DQBLkTydjaESHCAlZ0vrKaumnkQEXN9roF/TueBCeR68L2R
	bo/8WLpqFR8KOoZ6NEK9KUYGPMZrEafA8rrp5U9zO6nncZz7krpTP7treAMRINlvI6N
	myaBEd0nFxgHwzYESCYp9nCdHuqc1zhBSB6EkRpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651384798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oJsZTvJGQRgdqaJ65iLc+QTyJAFUO5QC4pCoQwWb1M4=;
	b=Ftsv2bud41zxXk91DXFWlaeRPLnIRq3SZ76Rjr7T+jiRwLxxwNIITMkflQRIRkX2
	aJRIJunyBfDtDwv6LbvHPHp5/o3AIo7eAAxfMcDizSVSMGXNS49sderwH2lQekAFs0w
	RPHhEmRmBcMTTpNuzj4GVgfa4vNK3tmPDOkD2TE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807e344c60-0ca766de-0a05-4752-9fe5-8f70b3701d14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 799a18fd4edc9299749f3f3efb479b6933fd47a4ad8054e8c32c01e2cb776941
Date: Sun, 1 May 2022 05:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651384798
