Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C792F4A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656270412;
	h=To:Subject:From:Message-Id:Date;
	bh=6lEkGHK4wmv8V+ceQEz5SAQ23YpQx4G76DERJFI7vwM=;
	b=Xoe28ZxP54ZvdlcOt73u/HgMfFRpaawm+HnFHIBrVzwLxoaXJ+Y+qprjK8Y/GIeL
	e9L7N/XqHPoC1kJJvhmi+0Tvtr/9UJwPDeUBlm1rZqK4XLKgNwsi7TAdZ+hezg+edjr
	KIn6+kLxLkbel34r7W2u+IT6eTfkH6fx6SqtqvzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656270412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6lEkGHK4wmv8V+ceQEz5SAQ23YpQx4G76DERJFI7vwM=;
	b=TvLjPRRcNIH67phU4rjP1+0mPVmWt45LhIB7Fl8n/S7xfVZUwmX3jlktzLIRXkIu
	K6Kd0zPF1JSRrGUyc4VmzjoGHBs2XG1BfxcsW9Ls53MizWNx0s3MKZWUZqFGDNJ3c3X
	yQKkZcdLhmblaoEafIWBli3TNhXfDMYH+3nSrfhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a168da0e-f5e4e9af-9691-449c-b53d-5717947f39bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa0b7bfc5c16f1d40acb0dbeda895f0eab562bb6c330a4758c53b999f4fc7765
Date: Sun, 26 Jun 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656270412
