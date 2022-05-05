Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8B97F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 05:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651729678;
	h=To:Subject:From:Message-Id:Date;
	bh=QFV+BXImJkNdfclcuo88ONyqjKKrJY6Mo280Z707eZw=;
	b=Fp7xvqkIQv9CnSSn0y7MYKa8wxC5DdRjKVoKLFXRl7UVlL7+k/b6XsowlxxIz/Wu
	2KO0oVekGG1ld9VLTpRG1/1791h9wpJdOaIqDOv55UbiX0JgxRG1R+hgeBo3Td9oONj
	y3aNL7hsTckP76UDSj5zVhn8g8OAc/pCsMmlFsHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651729678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QFV+BXImJkNdfclcuo88ONyqjKKrJY6Mo280Z707eZw=;
	b=kyJURqz2ZStU4YMz/3qU9ItMCHek1DP6OvIRl5HO/dUg7ZPcDHxPpAuj1gIoweDw
	Pc1gOhl+vlZGU3vJMlC+Oa9yrRxNRTtKa3rLlhVitSqjV8pHx02J+CtMnlQF+pLPSjV
	bROXKovGTUSSC7lCdJtUf2lkg4SuXKo/CtLa8Blc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018092c2bfa2-f3ff35a2-3442-4a1b-851b-840178f1257c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8503a65398ff659bc7f6c011434cd34494afc58963627d4cf804f16652a05fee
Date: Thu, 5 May 2022 05:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651729678
