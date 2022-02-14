Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A530A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867275;
	h=To:Subject:From:Message-Id:Date;
	bh=QOM4he+eDqRSHLscOhDv1Hd3MjuOwEY/u4gmwvHGdBE=;
	b=HiBIUxMZDtDsfeyjmgtrjYHpz8edHaPLzoZGx99Z8d4+2WdNk+RRZH+euDwOCTUh
	UEzkBTHS4KNySbnv7jdh57msKpxncMfJM9JE2YZSDGzRL5BGha/sAu7Dbvb1yZWr4mK
	Ko+L5uuo8xLzVuuf0pmKN6974oamkunzDmnv+LzE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867275;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QOM4he+eDqRSHLscOhDv1Hd3MjuOwEY/u4gmwvHGdBE=;
	b=Eze72EJvlh2a5iB9L6CO885woubi5nVY7dLFR0n67BqTYJtlK2WzyF1HruiS2jsT
	UMWw4fqEVrPFJIt91jHYpgx7m36m0/MHR0pnDJGTpXJ21HUc7JL+hjYQ+f+9UUhjMFH
	94OynuXwcc8H1fK/t1bf1U+MXBo3ixq183XFtaaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bac7e7-6749a67d-cbfc-44ec-95f6-78142208aabf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1502c14d202f81dbade0ad28fafa41c12b6469832a7b6fbede0a2c79094be5df
Date: Mon, 14 Feb 2022 19:34:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867274
