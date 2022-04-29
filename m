Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227571869
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 21:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651269418;
	h=To:Subject:From:Message-Id:Date;
	bh=oHNGlgHIP15m2+qh+LPv+WdTVrlSe9iHzmc814zNCCI=;
	b=i2h9LABX97b5xFbQLpyS84fZ5DYmiQMG0tZgf1MGWlsQbTclvqfG4z8S9HAHvXoA
	0lrRbJ/O7mqdSiV5dhtPabQb1LQmZ9T/DUKMdhyM+g7z16qHiJi/QzBzybSwERUBKOP
	dxCPrckhBenb7ylyzsNz+hkU7Q1/quSgWSmwCpXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651269418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oHNGlgHIP15m2+qh+LPv+WdTVrlSe9iHzmc814zNCCI=;
	b=UJZy4n9pIkQZcsHzNIcvbYRS8nzt1H/yXcmD9FZ3CrQh5cFYpWCaVggDNLJgk4ca
	LTVjbPJXIaJl2pQ9pzVT5Ao0jBbitqawpo1X3wAFNYHEMpFDZ8e2uU7E1AodTBchPhj
	yXx2DsTKcfHnLf/oNfmCrDQJYy3dyOai1SKCTsUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807753bd68-f93c3fe4-bda5-4158-beaa-bbd85ca688f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9114aeb050caf73644bcbc559d80875263caac37bd8989657f3ebb1a012ee01
Date: Fri, 29 Apr 2022 21:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651269418
