Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AE77F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661295052;
	h=To:Subject:From:Message-Id:Date;
	bh=2H5vUqMn5u3OhxYDq1gfRh66EJKTHhl1DjQGaeW7IBM=;
	b=eQnVcElBg6hHZLc5mZVrhtjJ7WgSJOtd3xKkkzZY0f0361hF+jVshnDA48O5P4ke
	bkvlW6CYFqOwM/lg1FFAw2x9b2npLEY/MW4+7QRE/fvekaYiVWKuyKqHIDEALmxvbEE
	clRHCvE2rK+W6WluK0USX4jsH3fq0AAkRGp4i/OA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661295052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2H5vUqMn5u3OhxYDq1gfRh66EJKTHhl1DjQGaeW7IBM=;
	b=bMQDWMgqasPASzl8xaQaN0ZzB9EQ1DoxbDlVE7/AOnbaJw+bub6nHCUxyQ+YxyWk
	6yGxKBM0RZHRSTqYqCGOPoKjV4U1yzfjATEjvbiSHQd2abwtP2u2kOQZvJB22JMXgr/
	BeI+UMgYGPHWLzwIgoSMAYIwJqDFNjG2cs5Llwuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cce6c6ef-f385691c-4a25-47eb-98c1-b75551749352-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f98428a755a53e765fbe42e986bd37a6c2aefb54b09df51f887371b075374f06
Date: Tue, 23 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661295052
