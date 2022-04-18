Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9927A
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 15:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650297298;
	h=To:Subject:From:Message-Id:Date;
	bh=Ofur+ROnNkPYcucDP6EnY6mMZmfkVJFcqY8o4Qb7s0A=;
	b=LZdE2RyuZYDb2KG+dS9xoLn5yogO9PGMgMNXOzRgHbiP9Wu4YLUfjRPfR1Zpg+O1
	hAj7WTWMwpGmWiAwxKSPTZXAStTyHHFCcv0DBViLbeyrwQ/JeURsXVHAiPcgXNNAFsl
	kPeSek+vlZJR5z8z1p3+vwY4t1kXJsVIClbrowY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650297298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ofur+ROnNkPYcucDP6EnY6mMZmfkVJFcqY8o4Qb7s0A=;
	b=NpVuROcfs+GC/UjGfLPo3dMfQ1PZvLmQFVnNso7TpEIKVp6LI7QtNaMd4vaZwdl2
	b2MJTmOsE4g9M/kU0pA494+hW4mtepuz+MN30tosntg/bdUULIy3GEEVRye7WODFahJ
	IA7o21s1H7+IdrMg1z2RbI0u3tPMEbEFkIPPZINw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803d625d42-c6b0d4a6-3afc-4b37-8df3-d0f0153ffc61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc7b02fa74b9d83631f0a952029aee847e0b3ede64f9bb7fab51bb55669fe956
Date: Mon, 18 Apr 2022 15:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650297298
