Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2177C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 00:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654994699;
	h=To:Subject:From:Message-Id:Date;
	bh=PBHUJYZh8/tbYzLFl+iXTV6kyEh9PJ1lrGcqAzjCC0k=;
	b=VL3/KnZ2Gx7iIEZkxp8sBhPJSIvN7YiczK1DBO/oV6fkzUdTgXD7rISSyshhJZE2
	pDCbpO9SgGuJP2SSmJbgR7FQ/zZrh5Pa8H6YBp3a6N6lK5PSFNyKRjgBLMd+Cp4IEvQ
	sTmR6m+9bBPuj8EFcWzsu2MQ4AWDk9YemqGUKcaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654994699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PBHUJYZh8/tbYzLFl+iXTV6kyEh9PJ1lrGcqAzjCC0k=;
	b=NTo5Kn6Y18ODCHuUQzW9fhDEQ8xlGaFqtoW9G8qtjQaBIxDYnbAwyPy6JQpCvsp9
	lwFNDtKhpnZy6Aa3ObBYjRruUr5F1BA9eESrmRnncWeRMB2CKNgSiq6iLaNN77a0Ln9
	ROiVpqX0S+OKElx7KQYdsHaSa7ObGnUUbTPOQaM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181555f03fc-5c20551a-c2d5-4226-a10e-9ada8af18a8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d194eb620e32ec1e030ef9124ed804ec31107e961ea9f1f06171ddaab7e47833
Date: Sun, 12 Jun 2022 00:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654994699
