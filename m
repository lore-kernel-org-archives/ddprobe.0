Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4C729B0
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656763612;
	h=To:Subject:From:Message-Id:Date;
	bh=u3YPGnMV8P9HZOVqrIOkiFPk7UfPzw5N3ScTRE98Bcw=;
	b=OD+muzX9jEabymDDXix40EDMUbpnUZ2dPu5tU28DBdNE/oiQolA9jiTV9FrfHgXE
	YPQfY8ZpXGxgalxrZvSnV2O99rZ/pawf5Hva2vqIfQ2KFc29dvlDqaZW65VA/TWUZQT
	lmWiy/0SWumaO4B67yJ2f3UvXkw57Slj3dxMtgk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656763612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u3YPGnMV8P9HZOVqrIOkiFPk7UfPzw5N3ScTRE98Bcw=;
	b=XY8V9fgMS9ugr8rcDuwBS13o+AloVJChzuV9tRITnm6sIGtMRN6MQSZomU6wXer/
	DeNHBdx6Cm2TnDiu9tQ+wnOgIhRRWpeejmSibxjdbq+w4ebmml5AzGaUvJ3IErZ6cYK
	ig16fU89VdoakL6+qhYfr93oahv1m8cdcRnQghbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bece7c83-02315797-aa5e-4389-93aa-911bfc8c7c59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b3bced327d142c2c76908538e6a7ef6391bb620b207b52cb10f8bbaf52f0c77
Date: Sat, 2 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656763612
