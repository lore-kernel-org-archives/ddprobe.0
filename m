Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7171E2F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647535585;
	h=To:Subject:From:Message-Id:Date;
	bh=diUpwY7uFqvO9PlAKqHj+R5jRULn6ihKcekxUE1HX4U=;
	b=JVNO5A1hktcnzDawtW7oJ2B9F9g0YwhNaA2iIgo32i97NuMHbYb9v4UjqHrkRSib
	PqHq96aPtUf30En+Z+HgIJf3UBe4I7uzRLMiWj8R3v1SJC22X62yh8RQLO/J4aREiAD
	rZECGKueHQT9biQmVT6HFKQG63qCyr6blg0SOPkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647535585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=diUpwY7uFqvO9PlAKqHj+R5jRULn6ihKcekxUE1HX4U=;
	b=c9vI+LFIxQT2lq1mpmJ20aDVfV0QTE5PexAA8+i3SFtou+Q01yUgf/+iivYELVwb
	mzOTTXY15+fL+bvvyVcelG3AHne2B2Wnr+0pIswIAvz+iP9UY+ZNkh8lygHBzI5BKbr
	bYDpnpRRWnJsl/p2+y2VGhJR+vT3XtVEbf3Ivk/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98c5f67b-175376cd-fe8d-4a02-be50-68aaf7b7862c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c34e4498c1e851652f05f67d06bf8be3a3fc7f44127b7b2ff56096c0f37b17f
Date: Thu, 17 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647535584
