Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072587C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657234612;
	h=To:Subject:From:Message-Id:Date;
	bh=ZcJLyQTbXSAuXk5lCJM3NRcbzqOeenk7MaTMZwu2mQs=;
	b=OORWo8SsP3sTRoI7wi8O+ZVT2rFbfA7WV242NSRtlvIorrHLj3LT/zVdlMgOysjW
	ui60DWVQ4OhNIucj153TpJsRs7757qqAjQpn1afW/teskVbb+fSqs8YOyerOZg5WatM
	4Kb332657LboVXqI+/bx7qJ4kKIgLSsUfhQS1x0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657234612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZcJLyQTbXSAuXk5lCJM3NRcbzqOeenk7MaTMZwu2mQs=;
	b=fySRtfoygeaXXomWuAu9PbMY9SdJJ36GUs97Vk28COEhlQKD07DRkLNSaOIY25AE
	UJj3Gku6YQGOS3+Z6Ktko3OOCTLhd+TIxFKCKJAAHGRqhJgxYcR+LTYQ9pjisbCq2gg
	3mPJ4et6t/xeVVLS1KxJNGVM2+ZnGJ/7rkb/OWHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dae1604d-a2ae897c-dd33-41b6-b7d9-c24169cebf5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61a62bdbb1585116d0bfb6c772761b1f906fefdfd2c978a46f2ca8eb2371af69
Date: Thu, 7 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657234612
