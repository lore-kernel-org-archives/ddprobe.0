Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A935EDC
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645393884;
	h=To:Subject:From:Message-Id:Date;
	bh=QKKrsKImHu1HWp+0QGOK9LC4QdHqmDHsMBl2A1mEqdA=;
	b=XspRsq/QR35gNsmzA0TLRs28Yh2MMG/AJQP5isChZq58gumJcDLaZZOcbYwdxEbp
	eA7VCb5RebGjIzXxw3OqNy64QNLMCA9Cicvta6VksLnPrkUCM4vwlnilyfKg6gYEvRx
	1cJJs3sRMSv2tigfOXowZQSQnD0XSlrEcRA4Mv3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645393884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QKKrsKImHu1HWp+0QGOK9LC4QdHqmDHsMBl2A1mEqdA=;
	b=TMy0Xb8PF7KqdVQkN38/WmtI5PVms7Q1WJZe+IIwErV/GuaWtm+cd8mPP+tdW2dJ
	Hj0WaRYS4H/ZS4+TTpJpj1qvpjDXFZ85BpINBEB3RtHVaK2sb53cdeoMycotvKR2iad
	f4+jCqI+LeLdFy+5iAU4Kz2nvy2uQGrdPoYaA3rg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f191e363c-89de3db4-3bb9-4c34-b815-1385bf02aeae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c823695f9be2cbdc3a9286ae93c6ab357140b166b416f6ea77dfefba3ce6447e
Date: Sun, 20 Feb 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645393884
