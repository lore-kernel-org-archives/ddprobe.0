Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E6D17DF
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 22:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651531378;
	h=To:Subject:From:Message-Id:Date;
	bh=Wj+yMzjWGW/DC8lUtxrWLIRg2OcRkDOUg/iTYoXfGhQ=;
	b=ImLcpLApWhJEjqv7v1IQK+kvAMoIVdvmavKjV9bo1PEYas3fVWN+FK59mzSYzAlv
	tfaPUlYsj5uY3UohS2OnkRJJ15eW80ArL+7T2ShDc7sca8L3i0IgAloveJf/9JxVEb5
	6WuQBfCzg0SRONsdNLoGX92cfYlfiKAyHQtpddHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651531378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wj+yMzjWGW/DC8lUtxrWLIRg2OcRkDOUg/iTYoXfGhQ=;
	b=ZNOI300vJSqlotsN8eyvRfIHqYUkpg2emcilDLeoGmtt0CwmGxQ+r6ZQoHEywvg/
	0JFbVe0UcySaH2w8exPTGxvLpvumDNNX9O639mNpEGExyLv0feS4gfyLtSs0g6CaUA1
	gABvwIPlUXY9zjYiEhphjiecdIOFFvJGXHTezoZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086f0ee7a-580c0e10-7ebe-4bb4-99d1-e373b0631eb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5c750d2c5ed4672d27e6c492d5e873ded7a0d70a0565ab0c5e8ef3b85a3e99e
Date: Mon, 2 May 2022 22:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651531378
