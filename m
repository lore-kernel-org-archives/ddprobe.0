Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B017B
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 01:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651281298;
	h=To:Subject:From:Message-Id:Date;
	bh=2sTwrEh5msrIomuI3l5/CZZsE4oM1Sw0XZTUNJhUnV0=;
	b=TN0/34AeGXrfHemIAmslyTTitqwe0heFIIsDvk9bsHMmMDA8bhLUTZyyupLURAuA
	IPg/5GDCluBXej9SfVxS+2gu40vcKIie3/5e2FFjtY+kcJelGr4EVQO6ZTS76gVKYxb
	1gAzRlUTEPLSiIXy7MaH2pqzCMSFSdBp4UyQ+pkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651281298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2sTwrEh5msrIomuI3l5/CZZsE4oM1Sw0XZTUNJhUnV0=;
	b=NUbGw65mdzuRKr37wlSjV+xNtgszfw8pT67nbvGcmFQk14TTTe4TgELdZVAfTlR7
	vrCxqahk9VWKPrIpQSnYjhKIij8ULRk/rWE8rpNzKaEepHB7hIqc+bROCxoI+mhaJgq
	rDHzlb3r2I+ST8UzEJSvKDF/s/VheyJ4C9pei3lI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807809037e-f8305934-b30f-4e12-b264-0da9f2e82200-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c7c397e28c922e6321ee7b655669564a069d23ca3e26a70be0a996c8f3dcc2f
Date: Sat, 30 Apr 2022 01:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651281298
