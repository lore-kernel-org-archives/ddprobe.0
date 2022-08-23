Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEB15CA0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661283652;
	h=To:Subject:From:Message-Id:Date;
	bh=hftNDI7b/mhqWU0alZ+PnP8yDh1ID/hJGsP5+/BTQTc=;
	b=W2T27bDbq1Ud7E+bB5kSXFA0ly+J8lekTJ1KcCERDE+TVWW/BPhqSPL/aJFVSuV9
	ZkMk6SLGGljgyDf32hHiBehIo0kcr9PZPQ+xBwVgksLsFkZQxywtAb8Ij33iYB9UQTW
	M7k8LfFrzeUSsYOrOvwZq8P5VYR/4budJl2pjYC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661283652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hftNDI7b/mhqWU0alZ+PnP8yDh1ID/hJGsP5+/BTQTc=;
	b=BltKESygX9kQHGAzZutrFkCV4KoIjP4KPTo6bgG6ov67vF7lQmyMR9z32yuA9EEf
	wCqs83ZKvnqHzI6bTRrSUhEX1HhrJzaP3L1/GFm+AgQivh6LNIWUXB65rzO6rj1Ymaj
	tQbWTNY5m7MOi3ybiPLwAGwqyw+4vpBjt31IehDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc38d3c9-6814afb4-139f-4a71-b2f6-287eb81e3f29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fc70afeda2d1c0c437d6173eb42a023ce0d0de31c5bf7cab8c6fbab547ee208
Date: Tue, 23 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661283652
