Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C99923A5
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 03:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652932379;
	h=To:Subject:From:Message-Id:Date;
	bh=71qxKnjodZwUeMMCXKKAB/Cd537LWNzM8m6V5KVl/X0=;
	b=UNFOrhnlCuOQtfePHPtcdvEOqwudszNUfI8rXif+YKR6xtnPuYCYzJunDm4lNWue
	TAdpaHkddtTuxuYY9GFPGAYUMMajGLeeRiHoyjYFcsYCORlidGiXne21skTgoFvVPLP
	Bp4HaQdLkNNaQzckzmX4pymf0efXg+ZDj+QWSpUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652932379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=71qxKnjodZwUeMMCXKKAB/Cd537LWNzM8m6V5KVl/X0=;
	b=SWcLogdv/7gz1XUjh7xUArCtzf4NqHxMukaqWtgQq2UQZrchaZ9e71exTBx0XL6P
	99RzFqmdBsi43VXDuP9m+3JR2aIj17f8sfJDfh+nLfNr2GbYGcf30ntQ1LBg21n087y
	XDZz1P1OGeSr8FaLb8chl47ycq1uhDiobA7PHF18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da728291-925746f1-11b1-419f-9769-ca5cb5d47e0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d36caec492902e8fec096c4f533901b66b1224debcc7b2e90d617a30018cedb
Date: Thu, 19 May 2022 03:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652932379
