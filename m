Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CF14432
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658492212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZkCyPff2IbiX8Liu8NcYvKS87L5Gsxd+54I9gsQCmxs=;
	b=Ga7zJu7l292HD4BHcngXnC9ZFT+HsGn9KMDYIYl1pFw0xzQlJuqcALqz/qPk31f4
	E6kRqxK1CzLFg4X7YQaaJ+Djc14UfT23pNog4Uv+RPYzHVJoRTT5JKxX2OQ3DrlipjB
	SqtUYHM83IAsZzc1SRFCP3qTkkWFtC5999k1cu50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658492212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZkCyPff2IbiX8Liu8NcYvKS87L5Gsxd+54I9gsQCmxs=;
	b=OVuDWxuSrArgUzvThAur6mLabzHzoB5rNgTbeCfowTVTt5l3KiHE9zNf3ZkXrWn7
	THGqnhJLI+VTpg44/yo5nT7WedhKIBcBRqqSIf4fZUiu6is2Q4S0e/VexToZL/peoYs
	baEbWL8C7Q5wQUX/WRuMcGM8RQ4cxjrfYsoQ4VA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018225d6d400-a6141d09-3350-45ab-a9b0-d7968095b303-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5156ab5da5757a2a4995beea07fb26c78e124ec8041ae0b02f1b4faee522c77
Date: Fri, 22 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658492212
