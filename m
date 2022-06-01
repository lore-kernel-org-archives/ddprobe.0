Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F230136D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 03:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654052639;
	h=To:Subject:From:Message-Id:Date;
	bh=SxCKX7YFgXBfWQb7M2Mo6Jo5HI5w8C+k3w/jjSkMnNg=;
	b=drXtf3tcs7NoFHUMfHkILjE0OJzjHrAxwixI8TciGsYyPgR1AAXGP0N+ByiCn4HY
	ABaoGaNBY4GoqRlARs2MTGrx+8r4BLv/vw6zmY9qmd6ddTAqsU+hyTGw6Fe1+uVFCuA
	JeJLXSGgCgaSf7rBKoyceLMDCIhxcy1Qv3/nhxBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654052639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SxCKX7YFgXBfWQb7M2Mo6Jo5HI5w8C+k3w/jjSkMnNg=;
	b=MP3ou3bpM6uMEO9EcdyhYMjvD3O44qtEVO+FzZ8kI9XeanrXZiTC7yxqCNKnGkY1
	8FaACiHvwSLjzZcAEabX75zObk0PSGr8sISSVj6bxdefCggtWbADdL07kmybggyGet0
	HM/ADP/mN5WYX8lxMCwsab0kO8X7NXxngIBG9Uow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811d38523e-80496f8b-b33d-4d59-b242-7b9dccdc435f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0edc36cc2ec3c74f1bc52e645ccb1bef8e1d719a006ad46a32009977b241fbea
Date: Wed, 1 Jun 2022 03:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654052639
