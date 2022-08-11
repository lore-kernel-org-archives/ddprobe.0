Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D672F5F
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660252253;
	h=To:Subject:From:Message-Id:Date;
	bh=JEyZtzPT1luWQ0FhZlfyBCFgl8SJS/RTaIn3ELtemiU=;
	b=GYghYsvYX3YyT+jQ2Kb33fQs9yhS29FHWqIJEaJP8GaojeE7BwF+pcQ9DGWkNalv
	b/Iyd4T6qt77mquse4gwxllkCkn8IxHafZFWgfy2AHrbpB6Uzz8zbZdIzExPeg3XTFr
	qMw3IeUThMYas1PtBlfNKTF0uNWC0DlaQ4B6hrP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660252253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JEyZtzPT1luWQ0FhZlfyBCFgl8SJS/RTaIn3ELtemiU=;
	b=E9OJ7agAKF7RwL+fgG3R/VFwV++fkAAhJH82/wtKecgu3t2KksMFuAnAtUfJLHvL
	pieRYiq+wV/pF6D3KHv1iY+FXyomlQQukbcngzsQS1089Xrm+pb/Spi433ZECMv8kI2
	y2mP4Fu96rT+cNEWJaRe7tJTOArA7NhiKD3bpM4M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ebee9d9-6db433ae-45d3-45fd-93fe-1e2fd4e25450-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b23c31ce9bec86850666e13ca16aa463022a975529151d4c8f906eafd9e90ce
Date: Thu, 11 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660252252
