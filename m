Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC5DA35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656571612;
	h=To:Subject:From:Message-Id:Date;
	bh=hAIcQHClp0S3lQqPRWx3jAvVa9dad84lq2dXgbm6cvw=;
	b=fN74b6yBCAC7Bq+0anwmz7KsBk8ac7XYlQTjZcOpRs3BelPsi78iLWkLK2L3+aCM
	rsI9V9W7fqWB5VBlPjIPzw30vhstCMlFef16DvlpiMu3R1PUOFCulX0Ff12d8HOeP24
	RzsLKxa95pxkoNIjXwG/BJySGUzeUKLIpomykQ2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656571612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hAIcQHClp0S3lQqPRWx3jAvVa9dad84lq2dXgbm6cvw=;
	b=kmaXTS+LgMIaBLk8Il/z4MRSqasXcUD39lim7eHosz4Mk62XQIYkK9oSCwzovkOo
	2InHqAfYXnzolDgFYHI7IZLmVrvsDlEtU/9XB7uVjwGVCYGrezZQasXCq7bcOMfDdY5
	PcSz1TjBgcBTIIuuQbjnIgDGuySt5zh7eMFizG5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b35ccc7c-93653295-b16b-4f4c-8119-e6655db6b443-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d22580a1c55633b176a0bfb9546942215dd282bca238a9a13d8babb98e39d4e
Date: Thu, 30 Jun 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656571612
