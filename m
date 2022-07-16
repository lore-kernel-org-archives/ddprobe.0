Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7901C6674
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658000812;
	h=To:Subject:From:Message-Id:Date;
	bh=jYE8rytfmSNmF7NIq9hmAuink/v7+qSmsn4EbQf1Nww=;
	b=dW/lZq/cZ90zWqP5dWDUzHqk9Ik30+jXdrczFtCADBUUoK7gtciNS2CL/iyeSxjc
	IlYmf8uJbFldYyZucjv+okCrXkzHpHpFZq1bSeiIYv+lbjirRpWHUqGxKNjxDBSSLDE
	lxUquJlmsLdhfHZRQ0R/N+9uWGr5HnqG533NbABw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658000812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jYE8rytfmSNmF7NIq9hmAuink/v7+qSmsn4EbQf1Nww=;
	b=d0Kw1m9+boVqoHuIfh2m7asxCz+017xJ8APA7FHmA/ggoy3X54B45rKKmHFSDXxP
	5gERcfxU7Tc6AZzXvMGyvfPYFCDKJQguxs/wmlSDHl6xOb0vV/fbXLyOc++pd2y02NF
	aF7QOJpHYdlB5L0zUfrJDJqAmShN5K+gJbj6N9KQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182088ca90f-ee59e420-da6d-4122-afc5-69c454036124-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af7ad7a3da84d6bc9345814bf2147d281ecf63cb14ea34482924d6f5167f5a3f
Date: Sat, 16 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658000812
