Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2807A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647249085;
	h=To:Subject:From:Message-Id:Date;
	bh=l7SWDZjd8dRM22XhCyqXbmV5l13jhhtmPzGkktYyy40=;
	b=OT9i9mzb20ft4p8wnKU7rdTr76QEkDwavzODkNFutOstaMu+R5pJ96uhH2tdMfsY
	pGuFY2Z1cwnh5yfDjU/gt4tA+39a5uDzHNayOdsvfVx5nBGK94DAoMFvslxUQXxxAjM
	HE96zJPExxvyApF9XYt7FLw3BA/p/WBAglszjr94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647249085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l7SWDZjd8dRM22XhCyqXbmV5l13jhhtmPzGkktYyy40=;
	b=L4ebzAmN5InTbXdX3N4h8iT5jAjLoy0oNdCIg4C8eyo4CGrIFBCkfsp5/vbkTjVf
	m4qeX42w01N5134prphh6/V/rsws/t7ZON5/U9VOR8pHufdGWE3ReyY/L6WmXXUKKGf
	5F+I0OstFcK3ZY6glVYYzgdUKpqswrwXurgLDYTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87b25152-ce3f3ed6-9eee-4f2f-a1ae-87773198a339-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94db2d72505ac823c688b212b020e374cb8ec135cdafa1a1f493466db772c998
Date: Mon, 14 Mar 2022 09:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647249084
