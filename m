Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18BE7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 01:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654565519;
	h=To:Subject:From:Message-Id:Date;
	bh=T2wYqSFNCVpEaSTyJMEMbVwDhZ2dFlaqt5nxLYH2EcQ=;
	b=emp4tWR+/BoWvN1wNVNfHAPybLQ2Ao1S1N3ZGXJnQv85EDJs7ygNJkCwbTugYCG+
	8anJsY2c+OQUeSZ12H7OzmW5Zu9VqaGfroun6ljijQsff5q27TGV1ZOaXR0f2M/7V5b
	CnKivNiUPHDc2mLrRKQ/sr8SlKVM8TZ5KwtLpNGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654565519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T2wYqSFNCVpEaSTyJMEMbVwDhZ2dFlaqt5nxLYH2EcQ=;
	b=R0CwKKBaTdc/RU6/Lj0DXj86i9uly+fBbHSvPmGKQoctDsdC7deb1IHeIdpEfdhd
	lHuQCXlItivwX3m8fhW7rAr+fuyyHlwRM9W5egI2ZQTtYOj33mC93CWCNQnsWcc6TtM
	aO+U4veGCqw+5R7ZiVbLkNMqebHUwCkgYtx2O5Jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813bca3f89-2ade988c-4196-4c2a-82e2-48d1c7684512-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a08c955777c9523ae173ff1bf0a64109650f64dcce9dcb2c61920a35240e9b6
Date: Tue, 7 Jun 2022 01:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654565519
