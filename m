Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B81363
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 14:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652625479;
	h=To:Subject:From:Message-Id:Date;
	bh=DK/uIffHD+l3GMzy5Xe5lxIECS6KcNKX6hOdu1dXWbE=;
	b=H3JELdyvlOZXAmPCUwX0V+PzQ1pvHo7TwLDbMUE0RBdBdEHvWg/v6a7XuBXOxmqr
	7H1cb9hU+TfdFl7lyv0EgzEIQ7z+YzamnazABEEgwMjfArQJGJ7jasdNgF7FCQbJVpE
	H20A0FJFfJUwgEBGMOOtgEKRa/8URPeSR4XcCkts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652625479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DK/uIffHD+l3GMzy5Xe5lxIECS6KcNKX6hOdu1dXWbE=;
	b=LI4U9rrWNtukA/Q+gp2zY/GmHKaWdnfCFlVS5j0PCl4mWf+no3uwiuWGRuSnxYIK
	KQByF6Gs+TxuXg/6ZSSyYZa4wI3/lMa++B1rpdumN9b/dYnRk4Ou5Tuc86SCtAscDRD
	Jnn1xaJ68ABefZmRXju61TV4ZfPtKGwwvf5muQ04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c82796b9-46ba101a-8f76-4080-aa23-3dcbd7281c8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0629c2cec1186050b480e3de9171de6571ed3982cb65908cd433067fbeb37a11
Date: Sun, 15 May 2022 14:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652625479
