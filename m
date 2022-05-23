Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CBE3D79
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 23:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653349919;
	h=To:Subject:From:Message-Id:Date;
	bh=fZes8GRc/9n7UqJiWboxW+9qQkKGQzTxICbU4A9Rgx0=;
	b=YfxDpUckw19xEBHOj5TvGKMcU4K0wt5YfWoA1cwvsjZqCc6HKAI8fXfFQ+kk2XzU
	WTMc4v0f5ygFMk48dd/LQnkpV4ddbP5xuoTAp0aoxF7oPYujcNb/FD2w4/+WP8ku19k
	rsoVg2z9xtHB6xmhGxnfxDaoSQ+W9MDpw3NidXes=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653349919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fZes8GRc/9n7UqJiWboxW+9qQkKGQzTxICbU4A9Rgx0=;
	b=KKri3oYzTJ3JMZGKzjnBztl6K6zSBAPyiglYaQZHPgU/TzaJnBuDY+bTEu1MZ48o
	i0XdyrRsavTDAU+JPgLckBfo5flkJlh7pvhvGaazAlIkyA/waKPxYZLqVX5k5RCjxAb
	WKT0ax6/QcSrcH3lHjxbVsUS2Hs2rBe2X8TVxB9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f355aa11-7b835951-cf39-46c5-bd6b-62514c00c3ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64d35d2adc26d1615bc90037a23b8c77191914e169e1165c12a7b2b7f7d034ca
Date: Mon, 23 May 2022 23:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653349919
