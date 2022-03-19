Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4154C7E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647672084;
	h=To:Subject:From:Message-Id:Date;
	bh=cUI91w2XA5ft3wr7fHMROLfxcqZmodEXFKn/q2Ua4xg=;
	b=d1nHfrEjYbvaYn0ScO0uAkTipsw8/27e0cHhgRoZB37NZ/PWVr5gqR8R9XkveOJx
	t+dvh+XVGUCXLGhGKLfzDPtSf/o9jfCK27/z5HplCDeTkBaRG9yZTce8dRxYllnymf+
	vSSYQBPVcdsCYu2L2z+nQRpTYZF2IDy4pWa+q7rI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647672084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cUI91w2XA5ft3wr7fHMROLfxcqZmodEXFKn/q2Ua4xg=;
	b=RMZQ4WOzQ2VMMVG8cfNpzRQ2M82w9kZj2GVyW/B1uj+kMphKMUFBO0/zFMd23e5l
	4xN25OllIQukQ4XcrAw9ISZ9rLjrFgwlR6HnZoTU7U+Ajc/kwFjmuhykpv0nP3VQ+cN
	IOODfMOxCSR1QlHl26MLaOgkpoZHawPHqRj4+YgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0e8c90b-e21e6368-e774-4951-bcdc-ee04d1d89645-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebdeb2776341cfd0763f9d368eb1331260bb3001c86acd9083c43da7a2b0c6a0
Date: Sat, 19 Mar 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647672084
