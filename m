Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F59F15A3
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 02:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650682438;
	h=To:Subject:From:Message-Id:Date;
	bh=/GWTmJgOjXkgUZWaXsendT/AUp8DYshC/vEcb0PsFOI=;
	b=VXHeouYBotQhiRyS/AfzHw5TZVD9/v5oCEKuOVOoPT+mvKHdi1rrs/HcukFSSm9R
	O53puRkPi60Pf8dmoV4TLI66NP4TRU10qNj1qcFA4FRiRIY+4hZGyApqw3QhRp0yZUL
	6/IaWc1Jpft1JKAAfVf97bxGYt+KAJ1zxZRdBAPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650682438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/GWTmJgOjXkgUZWaXsendT/AUp8DYshC/vEcb0PsFOI=;
	b=ZtwKTEQBL+8smqJShpzB9jTYKpC+CdBIQq0UrwjruJWErjyvKZTcO6axPZMmnAG+
	eA4s2s7+M3ycyb64b4IjScDNDeD96l8EA9V1t1bwu2H2rYZq2aSI2It2fJ9nHJD0VrW
	32qGn0/LkcZKPmta8c08+PXjwGzDAtO9C17xC1pc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180545722b1-cf837d37-7620-4da5-8c0e-0453c6c353a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 698fdb6dccbf5433a640cc80b228af2ee36c537beedece99cc75c56d340e1fea
Date: Sat, 23 Apr 2022 02:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650682438
