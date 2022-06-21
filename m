Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE241ECF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 14:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655821379;
	h=To:Subject:From:Message-Id:Date;
	bh=ipWXDyX/zrpzIVZ/mwiZ8/9BmP/yyWYTEr9VTXdG+jg=;
	b=VfTb+MidotOjRgrcHdAwyzNIPasfj/VyUvJSqAbaRgmh5ewAQaTK95Z+Svw/y2C8
	KYn5d0JPa9c1a/9r+lCZVFbGbv+YQWV92huhUgDBWUFgBx+DGDd1ORFjV9cVmB+DoK0
	5XE9+asWCfRSpPXCT7kEyuwoClXHjV9TTkk8mgVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655821379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipWXDyX/zrpzIVZ/mwiZ8/9BmP/yyWYTEr9VTXdG+jg=;
	b=ZbOBUEYQ2PPHwSMAdUPVcafXlKF5hdyjuHTEF3cuPD1RBJRUa+qUZtB3l+Q9uZw4
	9pyvWsae09hETEjWY6IbkwHhLzmvxYnXIeO0od4HO/gXtDh7QF/k2ZYMI830PpRZLbd
	0SersCyudMXmX3MaOIf7kNcNawPGOEhnjEbm48p4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018186a52687-0ed82486-bc7f-4e9c-84ed-98944e41f76d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ee68f4effbba07c53729498eda6135c51c36b683a4b38fca8c3e53b53dd01eb
Date: Tue, 21 Jun 2022 14:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655821379
