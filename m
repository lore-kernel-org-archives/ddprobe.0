Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C60B15AC
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660033852;
	h=To:Subject:From:Message-Id:Date;
	bh=olgog+S64nbJJkgmSSq3eOeKgKtfYNYiHSZUeucCdmg=;
	b=ZBL7gVt4joITE3sWWlLD7wLUuszCKQEpoflBPZKWTWdJx6ZWOwocht/45aLVn4EW
	gpfNaHqlY4fXxZBStaq06oAok0w3QvA7HqCup/KxJjMmUODhbubwHaWfG0OO3YLx3gz
	nv6updu7ic7L8vMfjQgkz7WqmuaL44NQZ4iGjkSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660033852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=olgog+S64nbJJkgmSSq3eOeKgKtfYNYiHSZUeucCdmg=;
	b=XdwPu6O4E17aA87clV20dyShvWTawVVkLpjOhWQ1jOg8a0kPSORVqS9cglJtOmoA
	lx346jB50AE8I0cT32nM8EGP/91b/lvLLleyFtC+0lny4pOzbuxRskS2RJPL7ZH/M7e
	i/cLsMERDMnPGwPQRpWpToxIptcOlWQeSyXUWt7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281ba649c-8a928013-2ebb-4217-b12e-c27a1551f693-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15a49d4e72d42cc84f3e7868913bd6cd2315d87a30826fc6c8d34e4d66da3e93
Date: Tue, 9 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660033852
