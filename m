Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F29F28E9
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 15:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652195159;
	h=To:Subject:From:Message-Id:Date;
	bh=xDFj/8zuo/oTY/VRR1N5MUqCwAPyqECfxa41O7uUkNM=;
	b=jLzAyQIQCWOHFtPkD4g859u/d/5au8Rdht/FV4jSm3P4SvKemi8dgjHlA3mZboSp
	65XcaKL41Z/ZYhmg1YUNV2F50oMVouCENXez9hrpH/jOm7O5PTWc+9YP6aVysvA1Yf4
	ax+lZ+9zjZIVRDMn+ZCD3O8UjvKrSk1AWfModN6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652195159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xDFj/8zuo/oTY/VRR1N5MUqCwAPyqECfxa41O7uUkNM=;
	b=IhzfRoiKP+TJET2wOWTlG/YfPL+VPkUmEol4agRBVGXNsYewCtkG85dvhVcEKJ67
	b2VvaawxiNiD7k8xUtZvz16RZfDCmm59B25a7P/zTLdXTPFebx2IZmgOpsEd7PZqqKi
	1nlEWhjBgrBkrNqwG0apLLVH/D20Aw8N45T5OgBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae816d0b-2df27d28-0852-4891-acd2-b1f58e9585a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63c4b1de6174b1b7474706d600ee5e2faaa887dd2b3c8342e8881c6f1dd6e6ef
Date: Tue, 10 May 2022 15:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652195159
