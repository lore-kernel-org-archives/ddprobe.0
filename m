Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA29110F0
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 08:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650442198;
	h=To:Subject:From:Message-Id:Date;
	bh=bA4ICmxUCFqfGpSASneKWo4Gxmy6nwf4Y1VZMQ+TOcc=;
	b=axJ21UND/RYQD5R6L94YHbbQpcquPRsRRXMtrUDN1A3K26O60F8+ikhFNaQ+bwKo
	dVTaDodsjnaPocjqlXQjLx/8xVQzci99X28ftym0pxUGCNYMOVmu1EosSE8h23v8AVY
	osyrdrFnvTPIEB5927gGvrUGny9T1qhZP5O9qM4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650442198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bA4ICmxUCFqfGpSASneKWo4Gxmy6nwf4Y1VZMQ+TOcc=;
	b=AVIJFhmvPQIJqBEkFejYh8SAvK5BLAx+rAskJnfNY07ybXHswgKOmPTq27XvlPdf
	/h6zSGyciOuHJhwpX8ZFIWdb/CZ2odhZSdYX89iWTJkoagvcjmwiBgHqp/hn0WVZfNM
	6zHK91uqCPQjp8EZXs1lLQhX2gZXItXkA34+GX08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046055cf9-c8fbad84-31b8-4e66-9105-a984311319e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6df126a715972e740f774a94d751a25a649ef84cc89e02cbe89c866b7eab316b
Date: Wed, 20 Apr 2022 08:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650442197
