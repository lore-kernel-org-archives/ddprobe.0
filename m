Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2400C7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 15:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653061559;
	h=To:Subject:From:Message-Id:Date;
	bh=kuUEp6j3j1Pl+n4gLbXhACiKnwPjOzUsqVogYTK72Xs=;
	b=aPIsiT3uSXg7p0SULM2TkYV0M2ui92+yA8WtbdkXoQbQ8xVJadM6fimwyhQhYa0g
	HlsR9GnZWPRGPZM1nt4hIMmUO08X2zA+Wv4xnGL0mlhS8onTex6RnOPnyRFoEdCeduj
	6cKrAe8JG41Iht2EjFn84YhDsNwnzkUuvONcSNTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653061559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kuUEp6j3j1Pl+n4gLbXhACiKnwPjOzUsqVogYTK72Xs=;
	b=CdBl4yQON5sIlsQbasEq+fYar2ucwtJG+HkqZEY6RIKDssYvTTILnmHZYVOhmnop
	3F62C57/hy6XVZiuW9KdE8VO9y6yvE0YzshXVmGdbKfIK8HTe+StFEUUhI2CQgIaQsy
	K/63natD8Kpn5/SPOgTERZQJXQ2HYVdtvb8+peHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e225a44b-7c16db3a-efd2-46b7-be25-de468c57d8dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a185f60045b717cde8c2fd36256d4d5678a3ccf3d5f2ae573ec37158e98cd6c
Date: Fri, 20 May 2022 15:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653061559
