Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4600D1FA0
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 01:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652145779;
	h=To:Subject:From:Message-Id:Date;
	bh=KjiD5lpwGdguAm3weZ+K6MhN5Q95ufl3eiV6p/RRzd4=;
	b=MkdIVmcV5RW8Pt/Y3u+Edr1WaGriqL0/fPc5TOwtivfx+SrHKEYp36ElGjowggmo
	NacuGuHf4YG2LlPGjAMIO+EevqsRkmwhNlKRnmPFSdiSXQwDzEz5YpeQuFUnK2rsZGq
	eBxlDg4XV6EfnJZrxDWDVRR3qLVFQa1nwqpsgzno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652145779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KjiD5lpwGdguAm3weZ+K6MhN5Q95ufl3eiV6p/RRzd4=;
	b=AGeIhokHTb5lNiogTwxfsyNpAlCkp5Bd04ZArFX2OKESjNu2eS/vrSGmOzGxO9BX
	jLj/cgarwM1t+9XzvBKxqpE0JbNfV0Jki93usRfyuGonu1fGFaz+aApwpseXko+osdI
	pPLzLZXffois01THDIcVUXEmLTG0wWa+YQcemmSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab8ff260-aeba6dd0-1d2d-4c93-87c1-7cf70c762b62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4677f04003b0053fa524486ec1baa44df2c3ab921694d931cdd91ee1e3ec4886
Date: Tue, 10 May 2022 01:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652145779
