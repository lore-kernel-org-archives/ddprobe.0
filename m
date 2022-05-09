Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F973D92
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 23:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652140379;
	h=To:Subject:From:Message-Id:Date;
	bh=0rbCL9PrxdNedxyyjUXPyZlbHHcrGJ/D5aCOOvCcxEI=;
	b=O80iYLx2TKdv8lQ4DeMhcuk623DKbqMLC9I79S7OHT91RSPMJeS/QPaHU5Eqg/HJ
	XV54xoitBXDq8jHhe23m+WIHfW5sr0zdTH3vGuutV9uBXOo8CRMaoGRHXKRhtlG88oX
	x+xGGYSq+clMDdYr4O8vJZ4XaTiZy0/W+i3nJyeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652140379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0rbCL9PrxdNedxyyjUXPyZlbHHcrGJ/D5aCOOvCcxEI=;
	b=gMYnO3b2IAV1CGFC6Go246163zzqJ7bdHBFsUsL69Kebr2NwpZ79NJ+p/XHmP+Eb
	LBYK8qO+inAZFVQrlgOC89jHKAkLnCaXz3DS1cG+v+e6yMoRUcc28S1x5K/0Wd6E9IW
	+pte0Qv6JNaaz13UCXqsSK2vaOUFf33lu2Ee+/LQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab3d8ce2-77de45e3-ff43-4db2-8d14-5808e803a716-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c852521d66aeaf80ac68e180d457da2987e8ca6d8816d55ea33e1b265753b69c
Date: Mon, 9 May 2022 23:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652140379
