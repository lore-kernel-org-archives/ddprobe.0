Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E24B33F6
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 23:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651620238;
	h=To:Subject:From:Message-Id:Date;
	bh=AFqX7XiwZ8XtUQaQQjuEi3tGJMvxWJtn/V2MoXDRWQ4=;
	b=EY/OYfkUNTpwL9AQVgqHzzNhd4hg3ioerSOD/SHOvGIj5WxvkjQV8Xh9kBrDvSoT
	DwenqJmyDCTQxBt8+z/2ZeRP40XlcWjdcJtwht4bZqpt0pAZiwAIDm+7ke3RoNhb706
	rV9O5MniaUPVSfL5v6nGMG7R6zCa6niSiRaIsqdo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651620238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AFqX7XiwZ8XtUQaQQjuEi3tGJMvxWJtn/V2MoXDRWQ4=;
	b=Eq1x38syFryHqNAQ4aZIw+bWsQF5Dw2ZIDLtrq7HojljrxMrqexEOP9iYHRqX49O
	MJsq8nHjmPFoRa6o/46+iOAQNy8XmThHAyIRAahM23A7i85a+9Se30OrAu3qTq88QOG
	q/Zz1IfFHOrlwBkJKGvIWIOKqJr78QKu92tWno+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808c3cd3bb-931db57d-b1d3-48b6-b284-3bee852f8b59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d538781cd51152413e176385c1c479e489f29c5d6ffc800773fc7404f378905
Date: Tue, 3 May 2022 23:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651620238
