Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D357B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 22:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650148618;
	h=To:Subject:From:Message-Id:Date;
	bh=lVWNwU4BD7oypBxAs5S7pITlgGoRYVHseyydLICXYCI=;
	b=FfCC9HyucvB74lNY4+dfVZwvCLN+X4w4fFReyrpmfUP30fKvpSEClEWH1XUbBjX+
	/vCO/QkNZm9I9biE0d/ghOwnDkiA5InWY8IxH7WCzAj5AaxE2iqZVh3hJGszjuwUjfN
	hqlQPnLF/WHwP+gXZA3oc3xZnAMQwAZCta3NdSQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650148618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lVWNwU4BD7oypBxAs5S7pITlgGoRYVHseyydLICXYCI=;
	b=dqni53o8oPabwriz8iBRrQ+iQyNtVw0zODKWMMlF9lqhHpVf36iZREOwWTHYt4b3
	m/obmvfZAPz2R7kawI8w0ujuboffR0++4mWr6/lnMxZpbmsolTG5hY+RlE/p7KPvwOj
	1aCKX/smq09LkYtzi+DrIxUJ38pcuMkjBovMidg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803485b053-22d75200-b468-4cc3-89f6-73c68a468ee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ceae674f3f28c5de9d2cc5dd89bda2239d58555c8064910aa407c272afc3856
Date: Sat, 16 Apr 2022 22:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650148618
