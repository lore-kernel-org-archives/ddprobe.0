Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359C4620
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 02:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651804438;
	h=To:Subject:From:Message-Id:Date;
	bh=othdc+iOY/cC7O0h0xS/bGX5ZgsiyDssylJT1B94sb4=;
	b=GJ17sw4gdoUBhT5OF29s0V72/lBK32MEtMaberAHoOMWey8MbCxCcxUscRnn1XHm
	EbIzwtkPxpBkw5aV+JT5dYds25n+nLscbKtr1cSE7GPI4ewvUX4pPPbbt4Wg6yTrbtk
	4wMxgexydyT4fpxMrsdN1bKc8Gu/3lgE9OllsGtE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651804438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=othdc+iOY/cC7O0h0xS/bGX5ZgsiyDssylJT1B94sb4=;
	b=Jtn5eM/ZPSvH2vPMioTafYICLSvqRMStRr+SjTLfnQfjWRkZWmygy4b0XdPNunhw
	JDw1CWqZThqUXd4u0f4urQ0rulTSw3fwwdU7EIEmBw5PVcI8GFgv8wSxaMV3LS4vBsW
	0dAfiyIzJ+7IjDFtE5IyF4hrouDHTjrX/HlAIJMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097377f4c-432bb576-e71f-4416-9faa-7a5403c238f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d7195e2f4f0e797a11eaa89fde2f35d9070bc6f0f62890dc53aec4d95ba3572
Date: Fri, 6 May 2022 02:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651804438
