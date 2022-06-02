Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B29622
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654147379;
	h=To:Subject:From:Message-Id:Date;
	bh=VcYhsti6UTii3QyykXPVeEIdttke2VDFq3B8w+7idaI=;
	b=hSucQGRsEyrS0e14QqsIWrbw3VCiCev7BcSi0ke5kPkKIjre+Zb9l8aFypgtvS+z
	h7R6G1V+DPdyEbkIKweaQxtko950NTXxZndKcuJn7BEwKJPYMXzwXQlH3s2U8vFf/7C
	EOOj2+mdgjxZ7PXMKsxWwjotX5azHP9koag8aZCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654147379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VcYhsti6UTii3QyykXPVeEIdttke2VDFq3B8w+7idaI=;
	b=GmJq3dRINBDIJONgTfflpXLSkymel+g2TvA/jQGNIjR2eIuSMtGiDxukT5doAZo+
	48AngU017R48NGsHg1ACtOrVtcAgL0HssVFvmhrAc7UsOuj4JDVU2QFDcBMfPIjt3n7
	gXpA+PhmXVQZsqmCusg3hhqtRrKsYKUUD/f9YEIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018122ddf053-5d06d19a-b1a0-408f-8096-c528ae2d8d89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36d309223970a5e162d6824041ec12e2ebd74ee9422c3d58c40f30a774738905
Date: Thu, 2 Jun 2022 05:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654147379
