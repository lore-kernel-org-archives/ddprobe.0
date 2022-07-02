Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB061FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656790612;
	h=To:Subject:From:Message-Id:Date;
	bh=rSaIk81nJT9bkgW/ixKZmSDsCnLw9qNIivcbypYO+Hc=;
	b=QTU8fOLEFoRUzynoHNV9k4nOkfMuKOa9HeMp5Ya1SvU5RTqKtWob+jXs+Tt7D1n+
	ZDYO7LoVBtpUYRcJRjekiDvVW2kpepIcP0gytq4HC/2cAIY2Wu1FVO/v6Oae/UW16hx
	1K8taaLVannrwWAAo1TFcjlN12YZ5Zah/BB0y0YM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656790612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rSaIk81nJT9bkgW/ixKZmSDsCnLw9qNIivcbypYO+Hc=;
	b=GkE5YItgYpoqPyB5Z/vc8eVu2I84Tb2LjN5xFBw0sy7jgPEx5q3oM1m6jfmwl463
	QZQyq+Fw5A8F+M2qC15WTRg1DNN2ZfrqEHkoYNyx4HRJv8AdJmlrErBHzF1GvdoVdYD
	vmo4RK2ZZ9NpqRmR0uzYevBzg3+LPpYxJi1Z+0SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c06a7948-26e693da-a742-47dd-acb4-ff1ec5741ae2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1334fc6d161dfcd6a25c5f8c86f1943ebfaed2ecde84156a84891773a8918f07
Date: Sat, 2 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656790612
