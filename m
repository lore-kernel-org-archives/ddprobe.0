Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8478918E
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 12:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651582618;
	h=To:Subject:From:Message-Id:Date;
	bh=zy6pr/WezaTHOicKTw1TRNidfFsmRgRLS+x4+HGCRyo=;
	b=SneETaqTwPqD4NDMH7pJ+owVWuGzs+GoyJNlHKQusI3dFrJG076WFg407v9jLCNJ
	1MyHD+Fw89FKK3ZgP4ODNwwvXzGTmI7R2uoCMM6IXCi01r5CMHUmJLVrTX4BMwgNWie
	pPm7fWeZQrAhEDe5mqJptFUkx3hTtcj2rugEfdfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651582618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zy6pr/WezaTHOicKTw1TRNidfFsmRgRLS+x4+HGCRyo=;
	b=QQRy6RybwOj0HyjCf8rQJZQaJ618tljQ09ChwGKunsIiitc0I3GoayeMxHCVBt96
	qUJ9JBiLFFOmCDlK/z0UP8lD/O/lbyJST9iAAGnT3uN1/Y9b+PRvDo9jabxSk5dqgwq
	vuHpBNnvPAAsvaQPkXmTN9qHJJCJ04x822xVEXlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089feca90-e3cc3aa7-0819-4a90-a595-be1ab8b8cf6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0168cd386bb8ec250a9eddd8f93f454b27c967fb944b074044ffb927b90dd2d2
Date: Tue, 3 May 2022 12:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651582618
