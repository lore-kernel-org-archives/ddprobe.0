Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C147C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 14:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646834485;
	h=To:Subject:From:Message-Id:Date;
	bh=eZmC01DudWuNgXDCvVu2U+gD3cG+CPte8eZpw0iFpEI=;
	b=Hwts7ZKwHE9I+ia2Y0W5MHoXpbgVaHhuPYiqNriUJXVMVHj3eHqWAPtNeZx4M1VU
	adIE0bne4Aciq1scDt+liAwDKCxFUvJsBDLtOLXdpjZ1RNB1oUpzr0MKBwhoIH1WDCb
	ZqH9K5n5rKqYvJK+0HZJEWIiQ9LOonoa7g6iN9zU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646834485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eZmC01DudWuNgXDCvVu2U+gD3cG+CPte8eZpw0iFpEI=;
	b=QEW12GqTsV9OSTQyBMlyB3mW6v7CEK//LpIUWR2NdNwX4b7ZWkuxPUKN9SEZSstv
	2f3FnKBax+SsS30FgUTDlomjcrMVjTRW/ETgmQT8yKRvuEpVpQnL9tlj6V8JVm9dnz+
	XE5Zd8vT647hgyZ/nxUNyBlkl8lLgrNTisbaLOKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6efc060b-38d8b7cd-269c-44dc-8607-e18e27b6782b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7b2ca31764654423e48303ad61d1dc165c79260c7f8bf74370fecc45619be69
Date: Wed, 9 Mar 2022 14:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646834484
