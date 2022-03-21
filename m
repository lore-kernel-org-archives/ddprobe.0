Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF9636A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647858685;
	h=To:Subject:From:Message-Id:Date;
	bh=5mz+1YjwRcu8AgjihmThxfWI/3EZ6CxZuZC6IXzSr7s=;
	b=LR1r3vDmTqGfOFmkIe8xS3Os6Qw6u3+XpHk0SCW2F428emIxT1vN6Tzl4Dt/LufP
	mQjGnJWQVz19K1enbimC29eT5igaKGceUu+/He8jwMcYn9jS4zaeRBUT/sjFt7xSBMp
	DLSnHuzagBsQGZreIpfE3N4lgewpdhu3kLV1J0Ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647858685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5mz+1YjwRcu8AgjihmThxfWI/3EZ6CxZuZC6IXzSr7s=;
	b=fLXohPgjffH+GYibxIFdCSdP2BNKQ2UEM8TCIM+kxBPdmlFOT/IFXtYVRNSvctco
	IJVencViipFbYHQ0nQRJfdhFejzHAoXZ2XFhnfTQlDnK8aNvZ5ArqyJdGqPKBYdQIkU
	49URc6lPv1y2MeStrSVJ5nZkzQdbEbBHXvMwcXsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac081340-1daebcf1-3cc7-444b-956e-d709d7416cd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 801d62829a204781d3996015c09d1a0bad8e6d90917b55a935e6817f64c4873f
Date: Mon, 21 Mar 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647858684
