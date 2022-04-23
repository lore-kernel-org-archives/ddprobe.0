Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227033201
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650744358;
	h=To:Subject:From:Message-Id:Date;
	bh=SOItiIrXYoy1VclupNt6GQ5U4nMjYfBYBcWvCcPRwyc=;
	b=NGyhhRL/AZ1gPwJ/nHRTc/9elURmoIPXHlerrkziNdSh8OMSFzsRT0gbi8vQDfBK
	IgFPZ8vQOrAEVUi2yLvjUAqieBbUeHAZqiognaGmJskUJHHIghoXagtCLuQdcQRb1MP
	luCPaJRNn2fKd2OvoB/fmHqtk7aqSRM3OqxIxHog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650744358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SOItiIrXYoy1VclupNt6GQ5U4nMjYfBYBcWvCcPRwyc=;
	b=TX9hiPbmwlkGXetupyWQY8qUy+iOxmqUQE+R9SJCXfgY+OXWuZbLlWYOeCzq8vnb
	jwHhuQ3BIqcxVJCCGs0FAPt/lKdYZPxcPBi/4gsalsmVa5I4qaxuS1unNR0+FHNdJZx
	Kt46KyIRQQ1H48i+bAI9uPoVPrb7k0ZH5Pj/bbao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805807f56c-3ee6d214-541e-4666-a0df-99b6b74ee7cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c6fad6ec9ee20426ee70f60ca2bb21e5b1080ca8ba4b899933d5b83eef37be1
Date: Sat, 23 Apr 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650744358
