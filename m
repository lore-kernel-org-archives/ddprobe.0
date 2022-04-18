Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF103D61
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 23:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650325978;
	h=To:Subject:From:Message-Id:Date;
	bh=aCx+JGwl9bebaZjeQKfD5wgNJBHPIkX1SsGU3vYVqIM=;
	b=iOqHdCXQfWYOfbXNdy5CR/ra4J/9yZN66cU7TXtmnND9ma3M0ypmRm5G7ERpxhod
	WlAJz8LM6J59SRd5UDfSvfeWigOJPFL+aoU9WjCRhS8Do9z+7YBZY65N9xy38TXsPgb
	MLEhey3PTlmyg7P+ayZr+C3th/bxUf26fMKDLBwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650325978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aCx+JGwl9bebaZjeQKfD5wgNJBHPIkX1SsGU3vYVqIM=;
	b=h9QuZ57otKfc1WGdD3sG96iGODTvVzhkT3cas4zvyoi1TxJwKQr6qsyICathVwJL
	1lBhqC6eB6jScqUBWFQmR5CaX+nqSOVei6BNVjcRAWGAoLenyhNF8XWgXqJuvfIkz2j
	dk5Q3TU1/elCFv1lOCA3Bzn/nnM8NP9RpHJ51He8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803f17fc98-23d045bb-9d2a-4264-a575-bb59e5d47016-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e131e4437009983b6ab63100541a3acc80f01f7fdf2ec74d55ebac75be34d48
Date: Mon, 18 Apr 2022 23:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650325978
