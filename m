Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63947E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646453185;
	h=To:Subject:From:Message-Id:Date;
	bh=dyFq6ZBwyNd34sgr8XAw3IGpUTFM/E9UHiq2/dER9BI=;
	b=biz+dGJdeAEPsdL9GQkoFauIKaqITXTCHzpEB1WrFgqk9nlqP6C40/u0+hRNR0PX
	/Pg3sQodmo44Ez9JYel/0mKeJJdEXX4tRgbAX3w1K1O4e95aev4fLlsJ+rnhJn8ulIw
	AfMc+McBJMiBdWsb0L0pBAqAhXcW7+NFhTZmRoLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646453185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dyFq6ZBwyNd34sgr8XAw3IGpUTFM/E9UHiq2/dER9BI=;
	b=GR0e4XjTdrDjjclpIjnCFqTiFlds89GC8f3ZgGoKXKTgNae4K58s3N1CQACWro7N
	ukoIZFAPl+APuUz1fm3DYyrcXsTsL2vuXA/hUf6pqjpoQVYOPLrzmYTTd0YOFBAwyTt
	DKzNYhOXhecpgxP35AvhDljV1Mt/wX0/T1iJjA8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5841d90b-e5638b0d-c647-4295-ba1b-ee6cdcabc3b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09056769ed2174e7d3c60ae2aa1b2907789f7916b2566f9708e661ea5e892fb9
Date: Sat, 5 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646453184
