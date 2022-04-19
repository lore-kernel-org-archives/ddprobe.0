Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063FA7A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 06:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650351478;
	h=To:Subject:From:Message-Id:Date;
	bh=ZPF24bTP5lMIBSy+sXhAp3ie2m2jFYenMXf+J83WNGg=;
	b=Qae1kH69s2t1uO/Oswx6XBBDG16YkfsOz9IE9qrJ+KqoG5WQUFzIQwy5Nl54WktR
	bo6NcHtQxpBakevT93f2Qbp/qCmWcICuQNig4UWXHpFunIoVXXbiMOCfES0nwkWOJ14
	KpPv0yAs+uifw0Frtp82g2A/6e5d/4vrxWua0BGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650351478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZPF24bTP5lMIBSy+sXhAp3ie2m2jFYenMXf+J83WNGg=;
	b=ORYPNKqI1FAGKAWsN81e3mMz0pbORCjlpjJoPb4vGqJc88jHbZzcY+hjPXiKvw9w
	wP5B3GiHZbbdcQvtFXmN9EkY/gGZY7TvO3CpPlSYC0IO/C/GE2DNgbT/0EdbWR2jWjm
	zAewEDFwKVgec2xelCTLvJ9ZvY/POuwvWN4WNA30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180409d160a-ac23d49e-9e39-4899-b831-5f4437700018-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: baae9364bccf8217104b11092874164523a7ea37c57dc4e222583be7b6744381
Date: Tue, 19 Apr 2022 06:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650351478
