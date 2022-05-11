Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5146328F9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 13:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652274959;
	h=To:Subject:From:Message-Id:Date;
	bh=VbtWeGzQ05PnZE2IdXhOQym9VfFdA2s/k7OL2PPSVQc=;
	b=CqZx9amJ/FPHYlwgqSpB/BQfzlXiXLQ9XYGNARcftgY2yPGleKri7QaDYqCUNgOs
	KInKcSRkRYehnGMz02PBIqzBbcSTMl09XGSA3yqQaiaXOcffTP6YY2o7+TMtNQZjkHI
	Kx6xyzSWNlSxnr5361v+6/ffFm0ALuvr6NgNEW5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652274959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VbtWeGzQ05PnZE2IdXhOQym9VfFdA2s/k7OL2PPSVQc=;
	b=GTpIcgZvMRz9SXFZvSZPhnquaVhQ6VTfL3VEF2g1IvZWsNGU196/v9SroU3mSTGh
	E5TaiMsM5iJZ7DnDNNu3s/1hl+2RtFzVYn/l+i4K/EsFcLPoZ0KvLBxIQCQ+knwd7uX
	YFjtqNG2tyvqihsIi1oVNrtPggh9n+v5Ib3NajZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b34313d8-91043bec-b9bb-473d-97f8-5770ed1c4c2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1acbde4e5fc601c7c7e7475fec8ee4bb5e1c1de540b4b6c4430de8867b0eba9
Date: Wed, 11 May 2022 13:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652274959
