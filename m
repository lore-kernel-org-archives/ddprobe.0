Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3183D61
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645093585;
	h=To:Subject:From:Message-Id:Date;
	bh=PNP4wQOinQY74vmmjCmz6W2GK7za505WVAVR2R8GXBU=;
	b=FxiOBAWqYXjMCUmRmWMfArhm3zmOBXCMbyIc/Pw0CrmYOcYuxui60UeWUGLeYEJc
	H8Au6h33sRawvQ6fXNgI93IcAQhN7KYag4Q/r4zovKCrL1gTdCK9N6p8K6G7O8oeyZi
	KRWJ98o4+NrmzuRmTk4nDiZM/AaQaVW3NLutK8hY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645093585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PNP4wQOinQY74vmmjCmz6W2GK7za505WVAVR2R8GXBU=;
	b=axvzc/RdMjCGS/o6oqeYPfFHpCwDbTDAW/URxJQMgzfjnyHc/CgDV8UONNKUnZz7
	vqoc2WWyMRQYUDAGYnJO1XMrLSFxunvdOR1O5ayvUleBgufTFp5j2DiQeMz1kRUDgTm
	rvO5J3bye4GBfphFEz0bub9S6T2+jwRulMCU6wR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0737ffe3-e7efaa6b-9287-4052-873e-b51557659edf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47995f4a0d447b5089d9f83f1d1e60f204adfd87932d1726f94831326225daee
Date: Thu, 17 Feb 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645093584
