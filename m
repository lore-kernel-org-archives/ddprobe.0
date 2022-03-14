Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6D6137B
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647254184;
	h=To:Subject:From:Message-Id:Date;
	bh=ogy+1F4gpaVleCPWrMDndIeVw5kXaY4lVookjssxwQU=;
	b=CZ63NVeInbG/OsNhewVW7WUVdCasowwVg5wUM3Gjywmgc5aX1WEVKmaiDUPF+7GM
	mtKjm3uGodWGhjPkPTKOlUX7BEGj4bCpcPtL3ExeycRX46j2Cc4gY+ImGgolDS2A+Nh
	/b9DCJMFeJCDVMJFGhKJvw3qFAWqJSyb1Dq1icV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647254184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ogy+1F4gpaVleCPWrMDndIeVw5kXaY4lVookjssxwQU=;
	b=XfNf2OgwfCWsc5PnYHzxZVdfQF4BUZIRHvERvVAPyZzBTRxGtfll4Dx+ZFsOmSo5
	1I0dLhmFA5ESMzZbTv5qwA4Sjgb7RgqRnsIe1k4b8H1gBb9p7ZG51y+m3ghMXmi5WsK
	2o+UjOPXbh5Bh3ZvSdu+GznsGJZElntCf209Jri4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f880022f7-9f5224ef-9803-4970-b29c-34764480e748-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df73e5295c796e4b56478416bba05303f81b7913ce65818652dbcfe99ed720a4
Date: Mon, 14 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647254184
