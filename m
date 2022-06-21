Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9257496
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 20:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655843219;
	h=To:Subject:From:Message-Id:Date;
	bh=mlU8qVGPA/VymHdiT7ZP1gwM2cCY2OKR+FPOwWoY9fY=;
	b=LjT+rtOOtcI1Om+VYoOmDjWwaQp6586muuWkgJDOnNk+NBo4oSgjtu1/0lgYLFIt
	5mm6EEv3Zi3EL7ENl9j8H+cUBTzWNk36c0tN57JZZriORyxZIKKx1dR1QVsvzKVh96B
	sqpiQyJH2haKAYYEZiqz8lmtRDhzknaTeaXs53Lg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655843219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mlU8qVGPA/VymHdiT7ZP1gwM2cCY2OKR+FPOwWoY9fY=;
	b=MU79yaQ4x7Cz7UZ2gR3VogZ0klish/HxyoZz698fd3vWolszYIo9rmvveljrWlsW
	WiDdwRQeDUdU2CUaYTD3uwtnSWIDWYJRjWWguVZK/WVJ7JdY3CDSFh6XDKv97QAYcPE
	3CdH0vYC3QQhrSC7QCBlT3jbW8F883gMPvr3KTMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018187f2676a-579a5650-699d-4acc-831b-4a0fe5ff860a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eacf680a1b93cb928187f1dd2863e5cc5aca2357b2bb22c43f808359399ad21a
Date: Tue, 21 Jun 2022 20:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655843219
