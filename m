Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA81E3C13
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660925453;
	h=To:Subject:From:Message-Id:Date;
	bh=2cScqKPDTSnv+RuT6FEiJbmSBbjg4sYg+Z74ZdSQptc=;
	b=GTSf0xv9D+zOht0qK5MnMbrMV5AGjgufQrj5UcVDAVuicKCqxPk9v0VPfKENy6Rk
	e3H1K80kA+KA1ujLhvWoCJKFnBDcs87DZ575RlJfhzZCO7BAvAxb4jJN9RH26zu9U1q
	9l4wLdH22kozNmmX8nEv/jcGrtJ7xtfIdbUcnjS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660925453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2cScqKPDTSnv+RuT6FEiJbmSBbjg4sYg+Z74ZdSQptc=;
	b=Z186dKV3P08N5taUVn8rD2wMrH0AcNrlGq+KQojlFlIjk55qEPZFHStEG4JY3xGm
	e4rzKMuADj/zyVd0tFhAxWeKx92LpbD0eVZSxNOPC6JK/gsak+UWNotv8GLV3ZVvAx3
	taFuzuNCtGIrXZW/t/KAjEzERLXNdjJxON/cq59s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6df2120-9aaddbf9-51f0-457b-a560-4a81ed84a69f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 484e08251e8819bbbe3fd8cc2e2adfed33e46a43173aa54f621006bbeaee5185
Date: Fri, 19 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660925452
