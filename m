Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEB317FB
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 08:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649234218;
	h=To:Subject:From:Message-Id:Date;
	bh=Y6ma2i8OPdXI708ijqCgdM69nyi76TgUNwrMoSVcR4Q=;
	b=C6flAdoYJRbB9blhYW+ggGS0CDZDZuq8Q1Omb2lQllSIA74K0jCtMShWscYDQuwP
	pWJnp2i40cPWrep9VQYk44za8/xvqHzXdOzWLsuxp3Zf2qhQBQEDIhR07SS8cJVAZF4
	AemL12L3YwWnCzNSTYfUqABgb806yVhInlk+wJ0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649234218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y6ma2i8OPdXI708ijqCgdM69nyi76TgUNwrMoSVcR4Q=;
	b=Gr2tF0YtmESluho194AHNmgebYTGW8ddjzaDE+P1jQp64jd3gt+s7dmPXz30KNE3
	MAQmEMo+PdIcd329codPY43kSwnH/ZGxV/qxrnG5DhUlduTIA817EQ6Zp4chUX+OXGm
	0C69NZymVRG4fG6KxcfnhdlZuBssv4hlII2Gbedo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffe050cf9-ca7aaba2-3309-4db3-b833-dbe7a507b08f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d14193cd7cc912319bbbf9bd85cf8c8ec4c9280226f17e03eea46f2b0509989f
Date: Wed, 6 Apr 2022 08:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649234218
