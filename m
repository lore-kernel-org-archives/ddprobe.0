Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C097B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647827484;
	h=To:Subject:From:Message-Id:Date;
	bh=gtdwLt4Ug9UOqmV7/67qyC8SyhwItavrOHB0BjLyLik=;
	b=cgg9vMZs0u0IFcQePVmZjq8kJUJVn9RMKaBSD/0o9RLuWTRX4jHX2Pr3N5L1qwlG
	qdUqhm9srVJ3JlRsbFMPW8lvP8zPCJGwhah0jlemSFwKHT3nqY3djiuPbTVp+7s1348
	tL8koAtnnxm/teuYvHFz7RhFfLdLNURIz53+VWKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647827484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gtdwLt4Ug9UOqmV7/67qyC8SyhwItavrOHB0BjLyLik=;
	b=ZWxto5ZJ0D92EQk/eDTldk4accaNXmAga1IBbbS85BPGju7lyCZX6U6JwuRKVFH2
	LgbzbGqzu+8brK4bwLzJurDR6qJ9gDKWscVLYYe1yV1BNxRPIVsv8NQ+n+fWijk8Cm3
	zrMAZ2cWFFE/ELz3jQLn6reCDXdCkLrk9QzCES6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa2c005d-b582975d-e465-4385-8780-f8aade723424-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7dfb39b84754f7e50b7811232dc0a0f223a7a7bac356320a88eee9353982ece
Date: Mon, 21 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647827484
