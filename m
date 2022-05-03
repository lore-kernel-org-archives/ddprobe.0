Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAF22F41
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 22:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651617058;
	h=To:Subject:From:Message-Id:Date;
	bh=ydj+oD4gLtliPexjrtIIAZRl6hf00s1r7aQg9hgh7uE=;
	b=RBSPrQIgEzGei6dneVdKh0Cv03uYDqbcqQEoeD2MotMSGd5S3mt1r+htArFDlXSI
	MFv6iCbhca2gvEVnpEq+2m/pRh4FxifMZZCu2VvMLoyL1DZY5q6oGa5TWVLOBpFq1YO
	dd1Wc+3wMdbsthPSqj6IHg86AoCa092xfa1Xqo8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651617058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ydj+oD4gLtliPexjrtIIAZRl6hf00s1r7aQg9hgh7uE=;
	b=jgo6qZ34I5NBHCJAHjzV9Yw95XR7rsm2oQVTZyq2C3Uso1n9INvg4ApAjI70349f
	NSq0Prgu3ASF5SidI4AHhlxIUwv8sjv80b/1VzS22KtqUiqLGsK/hWDGw8l44VJQgxQ
	6NXc8AhrURs+2Ak7djqdJyXkwBqwA2Foz+3W539M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808c0c4dc6-4e4809da-1700-4849-823a-99608531f066-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9298dcafb71d97de846315f70472a8e86a597f105894c81f722a17707edc3485
Date: Tue, 3 May 2022 22:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651617058
