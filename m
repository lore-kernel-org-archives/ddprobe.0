Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193DA210B
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 09:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653988379;
	h=To:Subject:From:Message-Id:Date;
	bh=0GMAQznpL+VyfcjoX92cQGbvfu1v14J30PYLE25/0XQ=;
	b=Z6DlNLJ8JxzF6x/+FUk37mzXL7WO+tKquvTlC2yRtyru6+9IXnWRNYGZrnKYuBZn
	oPGQVDe9dRqtJP05KP7uWODqQ/zgCj9lW6UEk+lkZ+YRbptLrJqpGsa2nPN0uQFTq9r
	RSbuWR2YXA+wIRBChmUmAMeG9aIMujo9wpHCMvPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653988379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0GMAQznpL+VyfcjoX92cQGbvfu1v14J30PYLE25/0XQ=;
	b=HtPWVOmF11juWBC2WylM6lK8QN/fkgq5lwxK8PKvyw4PgL+CwWtG1HWPahX1XmOX
	y2hFbaMHzqkh3JFlQCdIa9vJ3+fvuKG6ZQYELJT0H4K+m2ZdfxjtFcv6PI75VV5NWwk
	xo6nWf2nKWg5c3HEv5TYoLLw5VSe0S3ca774OrD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811963ca7a-044bbe2a-3dd5-49c4-95cf-66b1445a582a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a943960a4783c578e219bd7f8d331259633127263a8fdb46145aef343a90e0f4
Date: Tue, 31 May 2022 09:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653988379
