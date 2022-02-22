Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B827364
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645504584;
	h=To:Subject:From:Message-Id:Date;
	bh=/V2Y6uBDldhyMfWeK59X8DVWQeguuJdVvOtQY4Xhdo8=;
	b=eKQLZljvohlmpFTK4ONtTcmKL2e0tUIXNlVa2YKvT0WMqzHqwL2fQtU7hx5qLqd/
	SWGNlmi3QIq5y7YmvXV6xEpimVqlkbCoxbZdKCeKdZ0KU9VHRYutKnjFSsHRJ+Yulb1
	cx/QyPyv3ugh8c3v8tomqzQPaQ5aTV1RjXSlP0Wc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645504584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/V2Y6uBDldhyMfWeK59X8DVWQeguuJdVvOtQY4Xhdo8=;
	b=aCe1UPbdgMUjUqarJoVPui5eRKoiU0n6jFIecAryeT9JPzYRh1T0sk/YR5tSpTXh
	PWo+8ymJ7gFb1gtSxwlX2bBCBmVf2lW2wzRZZs2gHdibCDu2Y2kQZnTeOGm+C05r83+
	X122vFAiXy95vOzHvQZVQW//PF+6tkyD1iv7NgV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1fb75c3d-b62a1b08-afd0-4545-9ba1-231efb16f21f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97d2581a70aad8ab427bd17bf8356d782c5643bc59c219271e2177396e1acf01
Date: Tue, 22 Feb 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645504584
