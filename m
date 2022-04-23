Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1EA7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 12:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650716998;
	h=To:Subject:From:Message-Id:Date;
	bh=dXxkKEuskYGgjM9GtkGA7dnsui97BvAsbD62mZDf1q0=;
	b=XRMWxxLDP4Cd647Wk7FCMhR+sjHBxqD4HZa/hwLA0dXOSEhygTtL4mA9JX89Lmys
	Yw8ppEoQJA0+AMaSpKslgW+jotNKW6HmccolkTNOmY260DptablIrdJ3XlgQ5/JUDt8
	GP1p6Whh4LQXOtOLapg6bE/e/0W9nJRV9lbR3C2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650716998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dXxkKEuskYGgjM9GtkGA7dnsui97BvAsbD62mZDf1q0=;
	b=I1WF/FMUGiJyryWj42j/F8FypVM6MZCpzN9jhIroKc5lpWQlLmlninsH4Z0E5N7B
	CtQBMJxK9WRs24r5LsH59QiNFlNWguf1qu8/vtNUdih3TKhqGE/Zqa4xS93sfwTri0A
	dw+UqLXx8fBEf0nT/72FZtESOhUAw5G6rHindNAw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056667a95-44300463-188b-4803-81d3-61d1c505e162-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a30c95982d3291a91d2379e2867921337d4fbfaa53d62f827603d079b67f40d5
Date: Sat, 23 Apr 2022 12:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650716998
