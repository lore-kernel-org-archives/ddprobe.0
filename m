Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39628A28
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 08:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650357058;
	h=To:Subject:From:Message-Id:Date;
	bh=rBsMwckb2GIi9+UJdcnbMEu5amfH8GXWLS5VJWaPTLk=;
	b=JDWjXVdGQJBAt6421sDSktjVxAO2NCe4XO7Mp/V4dFqoJKw6rUKg8N/MiBFJ3I6t
	MwHTInR9Jn0YM4QvlWxHvhDX5Loqw76hb3lTFPMO4hfOPd28KODbQZljAjaxixDolTp
	8vDBQ/ZNGpSAubE3XuE0BO2ozQ453wzZ4C++TmLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650357058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rBsMwckb2GIi9+UJdcnbMEu5amfH8GXWLS5VJWaPTLk=;
	b=gn38IHpvnbz3W79VtQ2JKmWOotpJivPFhMjL4ugZ+N6lPlkey9DtpJ85o1nQMVfh
	V6WQYtXfsG+UZd/Vxw2Mv5hd9JVnVptdYi/xt68RKSspPsN2tEe6kODhpupFYoRaKgh
	sM80ui9pbu+G5Y64DNRfxh7gXVIE7m3cEJ5RrrGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040f23abc-01c2bd93-a0fc-4a10-9daa-f7ccdcdeb495-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34e4440cc0a7d420b5a7c94e65a0e2a78b12548877cce5a2892bb15f4cb87c89
Date: Tue, 19 Apr 2022 08:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650357058
