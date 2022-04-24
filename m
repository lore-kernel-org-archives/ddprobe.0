Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF98017D1
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 06:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650781138;
	h=To:Subject:From:Message-Id:Date;
	bh=7L2+EC5/ItZShB0S3WlNptsQatIxxXoVIUxJddyIx60=;
	b=F3c3W5bHAa/7SloP6Aj7AkVjuOLkhT7UGWO0KG7xinGJ4079s2IolKYnZp3fABRr
	0JDblozcGtRKFMCEJZZNGq0K/YOeAuLeiYTZ7w12Rds4IduFXdoernk93V3G2FWZwNt
	Ux5Bdf2Kxj9FTuWgf276Vr/B75kdiqrQjr7VqLkA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650781138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7L2+EC5/ItZShB0S3WlNptsQatIxxXoVIUxJddyIx60=;
	b=bn5UnbUFBW9EACFr3090uxIZoE8SdRndFDYlpb162X1kax+tXGjV8WTCO61s+Z55
	wwP/+ZF1YBTiCkcME+sqricNJUIQL2dt5UepQ2LCpM9YBNzje4JRRxL6+ghL0wl1wwE
	MrKH0ZoAuo+rncMhl5euUmVqEqHQ0ctzBN2/px9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a392d73-03956d96-e2a9-4e65-963c-851ddabeb756-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd05a407669f8f2e32cfe15aa32bf905e7c15f33b5b05abd317491128bd62812
Date: Sun, 24 Apr 2022 06:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650781138
