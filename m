Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E933C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659278452;
	h=To:Subject:From:Message-Id:Date;
	bh=rvQjb0JXbJB97PVaNGrUPmvDzrW7Drmu1tw3jTFCjIA=;
	b=DSrwt8F7h5GyrwEEXTs9+T3IrR0AiAIKXox0s1J17HsyUN8CHpaQ3S80tZwREbXA
	J4FuwjWV6ZTwEui2GNRZAD9yVcMOvFXB/e4M+MQ/5M6IHb1j0fsUmOFgspJYO18MKyU
	uNkJiVEBVXOLdLZEw35eF4ErmqM4VwAZVtk5rOwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659278452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rvQjb0JXbJB97PVaNGrUPmvDzrW7Drmu1tw3jTFCjIA=;
	b=JSsb0ogBoGJBg1fvjWFj02b2lJDxrcstxRbb/wi1Ha318BWQvJo11loZU9BFK5+J
	slG9iTOol28bIn7fOI7NVHfEiN9U4YMFtF9nnownTLf7+cyoOL8Kjyh4he4t5C/ZlVY
	BdgcJWvmEa0YJb3U5NEW+bE9uEwg6oBaE12bj4Lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254b3e758-6055b60d-9689-4bbf-9bd4-f10d6264067d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a44ef5b4dd5069291b8fcdab09d719c1598d9a94271b1a7099dcfadd7aaa95d
Date: Sun, 31 Jul 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659278452
