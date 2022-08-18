Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494EE7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660789852;
	h=To:Subject:From:Message-Id:Date;
	bh=NX3GhNVu8q080R2S9WvHA7D+rRwIdzKi6MJFaRHR+Bw=;
	b=b8EIq6wplm4yo737HaW2SjjMlNm0VIBWpBXD2lhbLFlcz27jd/ZcN5ZIKEWqFpjf
	pAJRPKkyHi+MZX7/KPvkmrBs+tponWA69y962Aujxb8WtodaevIlImxhlCPWoMfXyeW
	K3MgVzFaaB4Dm04/nHAvhI/FZ6R///3Zl86EQIG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660789852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NX3GhNVu8q080R2S9WvHA7D+rRwIdzKi6MJFaRHR+Bw=;
	b=QsQF4ObVvzGRCUs5Eku5ixtW+OZO1awxBtopsE/N/H0mNCDOuXpJNUF3GHq3hExM
	Yqzl/adB1/tFRFoAv1YqmAs580HzyfGfTtbPZJJNxvgMs6XbqaxwQBMcig3KU3UafTp
	xArvsn8ZNyWnPIVvYdgh1PJ/NWSEnXtot+byHtAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aeca09a4-50527ab2-4387-44ad-9fcc-79d5093b3a6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ea37af939f0ea0cfa96fda8119b53014d5ef814ebc9cc362d1ef636bb1c81bf
Date: Thu, 18 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660789852
