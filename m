Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09835184A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 13:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650460438;
	h=To:Subject:From:Message-Id:Date;
	bh=xIbF2zBou1an01ypY2PA1cUl1y8P9UJclVXhXDtLuBY=;
	b=LHiQH7RQKUu8aHrTuQtSTko/FpF1BTjo1oh2ntoXJ2RLVS+96FNpPIVxV4ZbdWkg
	8pZ4NMibqZQFYgz87rKUngcYIbhCE6Fg+J5gFaLtFQYKrl3N0Vy0I+J2eJ+v9n9dKKl
	o8Ql0nNagLiKHN9E5paNNZqYc4+BNSeqg2WwncgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650460438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xIbF2zBou1an01ypY2PA1cUl1y8P9UJclVXhXDtLuBY=;
	b=Eky8N/vw00uQAnmJrUst6knFO6Abqw1d+AlO/LIcsqlUvpDp+gMbCmVhdqVHkTSX
	g2yej+9wktKpqEf3U5VViZrSkI/QWuZajeVsdOyO1nsv9mkNZobPfJu0X/r98jRqng4
	JibOwb05LPlwQ9z6HFDyv7D58T/xukvO1atTJN/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180471baee8-46401a66-deaf-4cc4-b5c9-546b75b888ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b891cec685e5f726ea262b63861c440c8f75c50706810905e82b2e39353b6208
Date: Wed, 20 Apr 2022 13:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650460438
