Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E0433D4
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 20:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653252419;
	h=To:Subject:From:Message-Id:Date;
	bh=2HXODh5ZH0m3ADmYLGzM70DCZ0hrDXPHC2ypBGQNqxM=;
	b=QF4sVLv4SKmNnxqGanAfQOx8EStB25QyojkFikk6VvdSJV8NJoE7XG3jnZRcfNOV
	inapYCMxQSx1mqZxOGEGIUs5zICW9KaAdSLxaISMbWoaPNSsNLawgSdH5eQLKeuvYSK
	YIJDEU2h6I9Q9YHx7LeX6/yvZ5roxWRPWiOffeFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653252419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2HXODh5ZH0m3ADmYLGzM70DCZ0hrDXPHC2ypBGQNqxM=;
	b=JNlyCPAn5Zvd3WHLPA03jpS6g65jjiToAeWCBoOsq+zwQJYEf0ya9nA+xl6DzJa8
	vvmS7d0Ho7SABtlgXY9Y/oPKFpBdEB88646yD1N94k+elkyb4hL2dY6Fnyp5XXou3Mp
	GlJudXC/Y/sMLQbH+S5MqPHpzVMYqQGiHJ7RPpts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed85ef38-8df7c232-e895-4556-8320-385c59f3edd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d9e1b2dfee1da62eeddc5f563fd730ef83d9d3f098f6249ee3f7b7af0f2031a
Date: Sun, 22 May 2022 20:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653252419
