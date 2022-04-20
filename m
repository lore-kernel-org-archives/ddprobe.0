Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27711365
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 08:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650444658;
	h=To:Subject:From:Message-Id:Date;
	bh=8ezsfw3AiLFQPOgV9Z68BCuub4EecRCO8rJRvocAi1A=;
	b=eWNwd50gCo9ND394zXDa0D4i3KOryb60NYf5P2CNtPx/nv4vIZtBGY18hNOY8DW2
	jEeHovlJThDhhHJvRgPArkfS+dJiPajs0Tfm3QOYq3DnFO4QGmOrgsx/uwjVYk4ZbqR
	3+dg6wOk+cgqwIiPrrfx0+UJDJgE8VcxGC2ZN2K4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650444658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ezsfw3AiLFQPOgV9Z68BCuub4EecRCO8rJRvocAi1A=;
	b=aeIhByotse9zZQ6/h8IIvoEDLgks9iJePT2RKlGSVjyUFRtYjOerarauUxvTB+QA
	6Zdzz9wqSCv3z1b/WuNyPGjcWkVUETDXpB75pkasE279paiahLII3e3CR0lD8dsFzLn
	gBgMRNmtmR2NW5/kDLsAOF3zkPX8OFwgMI63zAhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180462ae639-e65b1499-482b-485f-ac53-7be202061cc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bef23d17684058fc18b1f6c01875333f9e7e787f10b09805f61bc6bfba2ae838
Date: Wed, 20 Apr 2022 08:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650444658
