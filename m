Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967A51875
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 21:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653601260;
	h=To:Subject:From:Message-Id:Date;
	bh=cAmi9LgBnaTcnapofTQ585TfXB/kCfanPrbHvOvjVZo=;
	b=FJ2a116ghAkaPU+nF/vuEYRqZqzefAne7qSbIm4wzIfv+vYNla3GdXNY7A/XGNMw
	qAC9fm06yloV4wtC1pU7E4ejwL1nUuK3kDfgoCD3a7E50elPh/mn4fIBT5OCfjr29kF
	vW83jL/9lA0t/1JTqJNI6lF4VcN45KZIQk3YfzEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653601260;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cAmi9LgBnaTcnapofTQ585TfXB/kCfanPrbHvOvjVZo=;
	b=DDYA4g5iT2wDTicIqotYOnN0gNotgCef4HspBB66FRNiGX4+2ENLIWRk6T7a/EpI
	ZbNx0q8kfpXsmG73echTOi1NojDokoxzUKa2yPTrHqtsr0J2APbo0pEh9c+jQD8Z+78
	Nb8cA0LZO+ijd+7QXiRpL0ZsZKTp2JitoCjAVdIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810250cf39-b452e841-02e9-4ce9-8223-aafabfb07080-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bddfc180716e052166fd8f874443b560021eaf4a733210568391a5b70954f416
Date: Thu, 26 May 2022 21:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653601259
