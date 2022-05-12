Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F01217D2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 06:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652336759;
	h=To:Subject:From:Message-Id:Date;
	bh=K01OrggW0GfCjSH9PMr9h8vughvMwqoFUV28wjayFIs=;
	b=LMQDqq2jmmMuVo5AC/xS9aj2K3niJrIdWZg6S9rRvpvZaVXWHXl3uAL5aodE5dbx
	5L1JM1a//lDE1PJx+9Qgk16OXwwJCuLpJgW4ENYCylcup3ksTIj2Vt+Kyk76e65j7d9
	aODNOH9RhmMrQEAD9FIJRVzkaXkaKx2fjB76HUj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652336759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K01OrggW0GfCjSH9PMr9h8vughvMwqoFUV28wjayFIs=;
	b=EiUAsFwP1VHrxhN2vIUsvMNvVZSuT695eFKoS4Dze8GzjZ4Mu0gGttNYmG388o4+
	W4nzx07RRcBKCd6ZTQq6mVUQ56MaDKd1D4WPu6uqGEvf/+29Ly2ZZMCW7zT3hNyvaVu
	ZX1sVP55XVCkJ2qMAuzbJ09E73qLYYMRSMU3ayGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b6f211e0-87812ec1-c042-424f-8e2e-2ce11e1fb23c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 617f2c529257572cfc28af0081419a32e64cee1f9b0ed07e122fdd470aea8a77
Date: Thu, 12 May 2022 06:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652336759
