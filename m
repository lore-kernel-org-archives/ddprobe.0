Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D9B7A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646502685;
	h=To:Subject:From:Message-Id:Date;
	bh=Jpjn/m5iCSo8LQCkNKpUjSF06V1LyS2coTENn96ZC5I=;
	b=mQ0wtGT9QI7RBTRY0Jaka4mqPa2AkafVEpzateOQmi6J8sE75ipojs2E9gS1ynZx
	nSQhb5g6QeAnXTAkh8OjqUY+bHx941EpW2hzDkcgZLPUguR6+rOIvgka5GmWbKBal1e
	23K4KsZ+OMb7i9M6jzk24uhwTY0gGVs+TecqOmbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646502685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jpjn/m5iCSo8LQCkNKpUjSF06V1LyS2coTENn96ZC5I=;
	b=TmeSmB/eUpOa3Xap2vAnZtvwfUHbv0SyNBXJlPzna0XCU7pWE8WBxMcdUHvOX1P9
	rPwRXKDlM5JfxkKJraU2heCPRWanfDbef/Wcqo2ZdcwrUZa1CESeMsvkYCaicU6/g2W
	5hJhWd7miPOiOhRcMxLbXpBnxPFgigGP0aENaD3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b352826-cfd9bdd6-e17b-42e7-b283-23bdeb3e6357-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8366b694f375d653c24dffba0bf44a5a5b881a9583dae9065aec5a5ab8703150
Date: Sat, 5 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646502684
