Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C762E1857
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 18:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654366319;
	h=To:Subject:From:Message-Id:Date;
	bh=qqR+Hdh7122txJYb53dXJW3OG7AR+ZO4NotHw0ONNTk=;
	b=ODxhvf8RuemAIJlGF1eWadXR+eHdCF/0uC5lH29I3DRQAx16GvMWsUUnp4dqfmo2
	6Bi5fV24+LLxoicGwvKLClj7Yce+cUDXEwJRao/X6Fna7Pzsg/M0CvFOfhlBvzOjmmq
	yf6UhfPBfPRWaklHb/QyJE3zwOWPZ0XtQwr6n9Wg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654366319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qqR+Hdh7122txJYb53dXJW3OG7AR+ZO4NotHw0ONNTk=;
	b=AVqnCgVx65j+ddT61AK0u6tAyCkJ5ITaEiIld1IoyHifEOcq2aebeSlJtuYooS3n
	dGZmwoFN3pos+T/9H0nlEisBCpT2c+Obzib7rhGzL/b2db4RKKYlqeyN4XRGAKi+KdS
	e30m4uNhTThvMPhBsjGUuDGy6g9g8DHYOAuszSeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812feab2a8-c6cc11ce-fd7f-4e04-8dcd-e69557f18887-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd3fe487c07ae5a90a38592c25329c914ac10b541cd92c1d3d5355e373bafc14
Date: Sat, 4 Jun 2022 18:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654366319
