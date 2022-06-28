Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340DD368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656386212;
	h=To:Subject:From:Message-Id:Date;
	bh=aCIxpxAY72FyntE3eQb9KD7ganMvFNpsPLPLXuYnzVA=;
	b=dY1UCXLua1nW7ikuidnW0051VLFeaqZugodebjzEXQ6fYaS4jXEWVvkw8k2v9Zwg
	31iU06VeVQnSXFvCjOQPsUVrzGeUyAS890h3kp2HT9zcq7P/7VXx8a1czOZy8xwbZqh
	igY81CdHaXlhGHJKlwhfTIC5EaAk3YYy7nibmStU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656386212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aCIxpxAY72FyntE3eQb9KD7ganMvFNpsPLPLXuYnzVA=;
	b=UrD8tzfFo8o02I/DeAVqHU5/oTCYvtXyHYqnD+k5cpEqa6n3SekOrJQV+pJfgIgl
	k6f2ElcU/H4TEWuO46YavSlYYqRKrcwDIhoiJFbvdFADU/fQTMSkZRyN4RDS1sA+uTp
	sCxYAKT1/dKdKshOQV8zjdNtjK9UEPqgm5otygSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a84fd203-320a130d-8908-40a7-b301-3f1e156eb39f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2283b613cab797a848af4fe10a032edc27d3e37f266ad9c66103954f55563f81
Date: Tue, 28 Jun 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656386212
