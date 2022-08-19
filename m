Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1974A14
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660937452;
	h=To:Subject:From:Message-Id:Date;
	bh=7+te5yyHnIc51lqISPgjN08+aQfaCChqMMRQHWw0ip4=;
	b=FNmfKJdlGmEfh7wMv1uYuZNyTIluPkOWpCB7AoA4E6Q22xJTQM67TTC2PI1iwhrx
	Oz4N25kxd588eSXn+dpy9+QObnRbgDjY+3dCC3vl1gs1SjqCvileZD1NS/UlW+R/gfe
	D6L/lvlamOR12l3sd+/ZMfCQAHb4JYqgA2wyDx5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660937452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7+te5yyHnIc51lqISPgjN08+aQfaCChqMMRQHWw0ip4=;
	b=cd3+mgx1Iix7O5rfueGf0TDFF23CSC5rWCfxcdiA0GS7f0YnGKcLIfhKE7W4oWAc
	8qL02no75Tqd1LYrPB+kIyAnNxoFFBK5wSL2CfGzC1Axe+bFfDNUiMp4PDWapj7+yWz
	foKtmA+fbHM6lVXFguup8IQKfyathq2z60EFL9mk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7963c43-bd385a90-3e1b-4bbe-b285-833e36e1221f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b687e2cab50f365103e5b179a8cf440e7640500dbc54231bb02d7d8f4ef6cbd2
Date: Fri, 19 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660937452
