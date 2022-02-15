Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E571164
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644890485;
	h=To:Subject:From:Message-Id:Date;
	bh=jESjWhkwb4j7Q4eYjG9k1X5G/DPC1Lcsh9su1bDhBh0=;
	b=aHBKo9fcZI/FyUkxRQTIZZleBh9qIx4qwFXxJueiTjqL46yagAajGtlQFSTqlJsj
	Gjfc6GF4YjNM6z6zK+Tj+P2HbAyFFzz7rdSfA1nQGX4WqUtBjiOtiKS+cDQ/X//cJvq
	zO22BD9zi+tQY/wUdD7fhsiEn+AM/TXbJAzyr00A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644890485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jESjWhkwb4j7Q4eYjG9k1X5G/DPC1Lcsh9su1bDhBh0=;
	b=c+LMJNDh4hMhFMEY2aGJepl374X97ct4rFr4kKHs1tH87VuJ+BRIN0F8OUza2D5d
	IHIwPFRZ0rYhXqB5QtPRzzEZzpb8UQO4d6SufZZMyLU8TD7EEv13gLfUrMfM+vM3vje
	x22rPV0Tp5/KV7k/yuVQ3LAjCmm8btW1vXbRcREk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb1cf042-3b431b7b-4b10-40cd-acde-27e1e330e608-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 648ba3b49308953a25f51eb61d73c94cec42dae430513a7afa42be1269227149
Date: Tue, 15 Feb 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644890484
