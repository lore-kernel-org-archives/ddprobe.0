Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FEE368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656389212;
	h=To:Subject:From:Message-Id:Date;
	bh=dE2XAkwr9hQiPSOObYGIecl1ILPVXIGoOQNY/2qawS4=;
	b=lD8C6gA91lhQ+AMe0KmIFtk7vZaodrNNMKlkPABU8trT/fzna2myBrPirJEslI5K
	5M9dPXsBD9Wdm4A7e8sxgclbpok5fmCmXt7KTRbYhhKGl91ZEnsNEioLvYIFC0tzVem
	AYwDL5EY99Kr4mYpb2d7cL7MJ9VZDZ9rfblRl9q0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656389212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dE2XAkwr9hQiPSOObYGIecl1ILPVXIGoOQNY/2qawS4=;
	b=Fv7LfQmGjgObF6Q14oBMZDxNXste77Q9ypXjnCxbuB04TYwrfRjG5m5fT8m/XdSW
	zItedPnBzGPxF5v5ZQ3GybCO/N3uzAfnrPnqb7BiFrOxiMv/B55WP/JLDVbY4HPJWCm
	ulKB8oPBrCzV74L4xzNKxGDBmwi7hdEHcfYZzCYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a87d9870-eb35911f-23a5-4583-8d0a-4ad1a89ca4c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f5b6ee588f02ff70126dfd6af8881e8f09d0ad1dd7963992e3fa932d3225e9a
Date: Tue, 28 Jun 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656389212
