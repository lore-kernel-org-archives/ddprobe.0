Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7F07C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656065212;
	h=To:Subject:From:Message-Id:Date;
	bh=k80tfR1fIY6JpuE2/MPbU6Xylb1her8g3+VkubclAJI=;
	b=hznJBCkSWPfgBDCZ9KTAZLbAQcj9nsmhiKVi+H29lsXphS+RNfsAJ/OjwAhnO6wk
	/Rigiyfq979JCHgxow0xFNyftWpCuBze5WYt9qpvnH7Kd3z64/ziQfrSH0sLEDwFKCK
	Wl4PnR8m45ToYSsf/77zLo8Tbg04WBvSoqX4fvW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656065212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k80tfR1fIY6JpuE2/MPbU6Xylb1her8g3+VkubclAJI=;
	b=KwbVmbUxB2NIKdT7KFZCtlspu/pK71nD5EDHZaqAN4kn/rM+xQNYPaEWyUiJqFGB
	nmGBCimK+oNghclQZ6oJG8t0qPxWtk2Tx9wXtXfrinE8Bi/lG/tiq1/AZIN9Lq+M30K
	qb5z1Ll9RM3PuvqmR5iDyp0hZRXLt1WtUfyNLGLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181952dbf92-971fb54e-dbe3-4862-8fc4-c5dd6adc42de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00e5756cc69356317b41d417bc67aebb77452ccad2c39b69bbc0f00cec179cc4
Date: Fri, 24 Jun 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656065212
