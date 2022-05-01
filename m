Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273DE28FA
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651416298;
	h=To:Subject:From:Message-Id:Date;
	bh=WNX6GDldcsTEijqI1Ce8lr9acRdeKteA44yj6QUvdQk=;
	b=TS51O2vDRFyCNvtkqe9raw+pMo9ZOXFfUp3IxbDc01plUNuxqlDMUF8Buw8TMtrN
	xkbJnQdh3toRhOsks1oWkBaD3FhcspV3JZd3A1DwLSN9QYI7G7a7Mt4kY0ZhuquACIJ
	vJXcCN+ko5XTAO0ypBG0e2QJz5JAV8ndFNgTm0gE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651416298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WNX6GDldcsTEijqI1Ce8lr9acRdeKteA44yj6QUvdQk=;
	b=aREYpECTyzGTB4Kto5uBM66znvpJ0cVgxCY8lZ6cQ+Juw0EVV57JndeyLS2LYtyU
	2JB9zXgSarRItZZik3BLLoF/QtHQxhXbvy5UDeLvfFmXMIbo87ptNzy3IkpnZBZj96A
	jvKKbwtxpXpHzLi4B7qiYbGx1B0vplH+OuaZDaMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808014f338-d15a3af9-cb9e-4636-bc03-68bca266b991-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a8db93e19016d770bfb28e6d4c09621c08121e668ad9c84f4ecbe2f3be574c1
Date: Sun, 1 May 2022 14:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651416298
