Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD337F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 09:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651570678;
	h=To:Subject:From:Message-Id:Date;
	bh=Qarf+2tH6KTIs49EtnBIxkLUbboZoOmuKetdArNpZh8=;
	b=mS3WBJlUS0jc2O/x8zUYugSlH1Y02byR6MOkYkWWrtF61x4bhdyBluvk+EPXVe1T
	lt21HZycPiknyt+s6GyJrpIq6DhYDdIWUZk8MgkSplrYGqMRa885wT8wsXoIXtCPpdv
	5dC8akzi2WPX2nboR7uO5fXyF3g+kndWKQG19lEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651570678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qarf+2tH6KTIs49EtnBIxkLUbboZoOmuKetdArNpZh8=;
	b=Trvz8u2QGHL3QaaN/lfu5xVms96FX3T4yOphZSF9vCf+aiFjAxNIULKsV4ncJPk6
	eEhDBOdCI2dvwIuhv8JETCSPIRtLFcq3qf6Mu+ul2aAtn2oEBWcYJUBSRfOekIsYQqO
	ZG71T7twHXIsUNAL6/kKgvQdqXdfnrinRW9JaadA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180894899d9-31beb6e3-465c-4022-af41-f5eeace7cc86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52545002ce7193c49255913bba3d679526c168484b975f4933c98843c9539bb0
Date: Tue, 3 May 2022 09:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651570678
