Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350DB4A04
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656349612;
	h=To:Subject:From:Message-Id:Date;
	bh=Njg1hVZ4zrhR+jDZNy9/pChrZCELvmPq9cD6SljehNA=;
	b=XsK09RYM6171bBBH2oQKgKmMmcK4liOYwX9p3QT9n3M/hvmFoI/TwMXMheMn/QjF
	rcmeRHXXE3xEd2YJqX9DjwITwmZuuuzfcfXndpjfIvS30dlTqTDKNmQKGB71GMekCVD
	dMn5EWWHpofI4t4cImglsNpgSE3wC5Uw2/Tday/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656349612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Njg1hVZ4zrhR+jDZNy9/pChrZCELvmPq9cD6SljehNA=;
	b=Y99B0+qmA6GAliowKrXdW5lhkZ7COGevFmzlSLxgDinyIQmrVmdV2rCTZRK72csd
	hI4+AzuPXav4f1QZsLgitosxwRgyQfW4q6tBHm8zbn7JKzHwwsgWvfETxKTWtGH+tE5
	e3JtUlVgYwG1YWEe0Ohw8cU3M2y+Vf/7VfCS1cuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a62158d9-bc928884-25d7-480a-8228-0d968ee60016-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a921871350dd82f4a2de76201425b9050b7bf9bd414ae6a98dd432e4659553c9
Date: Mon, 27 Jun 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656349612
