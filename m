Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CC9809
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657280212;
	h=To:Subject:From:Message-Id:Date;
	bh=3xdQTyW6eAchfprljVi1Bi6LpWMRVMuNphW6ziHmsis=;
	b=kwoerqngLLkSUhHw434BqBwR2K5DPKgbCl350I/7cPScFnXmE+jUu7TJJJaLYFUv
	iovGOg8Y3Uf+34TS1lmGVuXcVtdJzxVYQWEp4FrpixNUHX0/N1QkewWjT4vzUnQGINp
	fzQW5p7o9yXNlBMPaRRemT0EMgM6dkrNtLFygdOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657280212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3xdQTyW6eAchfprljVi1Bi6LpWMRVMuNphW6ziHmsis=;
	b=WGGu7n1CjVS+LNCDwh56rWbw0bqbaNCaOz2Xsxo0//O3OWno9xvP6agNJD0VKmAX
	w3Ti+w7+pr6FIgC5fowcRykH5EtO6gn6JDTNI3Ca3dWGgflkgvZPuMNAACIX47LAnhs
	xfBe7FVfZ6Av02VuOFLMzIu2nAw8+t8/ydjYzwq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd992d64-18b1e512-4e8a-46d7-bd21-fe52d24ed170-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ed5b3603545b51a1dbc629be6596c20bc29625ddf46c3dd828a1aea1b8db2e3
Date: Fri, 8 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657280212
