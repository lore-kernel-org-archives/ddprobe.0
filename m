Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C97C23B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647360384;
	h=To:Subject:From:Message-Id:Date;
	bh=KGNhqASCjdJ/S8//soX3KeE/y4L7hs3qSHhSMal9F+A=;
	b=AZtb/9dbp9rACcqpyc5UHmDq1L55rzjO+lXG7qZkDay3Fhic4mhn/k/phtbV5BjW
	C3bt06EuENMITKQHUf+Asfv9yoq+XisZzfgDVvG7Ojf+mtJtmV4sD/7QCGiQGvcqpza
	LsQJVjfoxtetJR553ZcBWbiRNUltYoC12sbmVxXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647360384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KGNhqASCjdJ/S8//soX3KeE/y4L7hs3qSHhSMal9F+A=;
	b=J13CTbQo2gDZ3m4LgYhQgpIdikPAaxOobLW6RUwNyF8Z2k9zAJgulHhm1R/h3d/I
	9KIhr+JrEPT1ReUNgVewUq8ryPL0DfvEqjFpHlCIk0i3mB79M3yGI5m8li1k4czsrP5
	7Hv76ytA6PVpbMyREqlTOzD/J+YfOkfHRy3e2wXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e549f08-c3093677-e387-4a23-b2e7-24e5e09139bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8a015a278bc595d2731269d705658ec94ffe550225d6f444a670a9f0a8734ba
Date: Tue, 15 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647360384
