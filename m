Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2559F2574
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656071812;
	h=To:Subject:From:Message-Id:Date;
	bh=hcNpKZditxNPl+FPK2BVPvCpWn5VFDTOiV3+epNbSDQ=;
	b=JmUay1d3xcyKgcw/pGq/HO2+YLMaj7xIlEPfwgQbZtjATfR3DUdRpZNtrGlHXeqU
	CFTxeSO8+M4TVX1DM3tKd2bt6xGJiVl9C979nouUkpudCPfIuhhwrW7F4DCD6Py25KN
	QIJGBkf5bHM+ug829OgWMtr++uajulsg5wi3HOHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656071812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hcNpKZditxNPl+FPK2BVPvCpWn5VFDTOiV3+epNbSDQ=;
	b=JznTQDkiaueKXo/rPoAeHky9ka/Y6ZEx76Y/pv2+OKujW3y6nDW8txml6xCIbqjw
	IsNzI/wzOcq3kSJwT9Erwz4CVtxBL2wJLz6sfoY+jwGCQiYwrfKZu1OQiufrr/170Rc
	kA/cfCYoLTIt/6Pap0kVfHLU5TG0ohTonvodtSZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181959274a1-aa39fba2-e801-40a5-adaa-f6dde561ede3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf44df3ee714a65df58b6132d387acf63afab4cc8de59da916df38d544a1c93f
Date: Fri, 24 Jun 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656071812
