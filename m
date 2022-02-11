Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194BD7F
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 22:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644619244;
	h=To:Subject:From:Message-Id:Date;
	bh=pomL6jxxts6B32nczdajphIPp8Q7dM2xaz6zeNEsSfA=;
	b=jI3u6RamOlSWXA9+o79FxOLJTYkcT+EIeTGxDnwhRbouDDo0zYLZRroyT1LFHHDz
	LSNRvo/xWyvPGhzKOc1VE4prBq0x787od7sN/N9QncLr0Srqr0I0rw0i2H8R6ALaOeq
	2GTHuT7hu/ew7liYts1XsRxrqtzQWWxVVKVgLW1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644619244;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pomL6jxxts6B32nczdajphIPp8Q7dM2xaz6zeNEsSfA=;
	b=bvtSRAwDuk0u5b4h+pSBqGPvTHNMSyZeiN7IgFp3acVFrAIWqBY8HD0dy5TQsbRV
	+UOfgLbY8PNffpRvnrQnvzdFdG5bvvqcvoX5YFAqOSFbuShN6xdyDknr0k7eVe4Rol+
	v2KUrlpyIkl7zDIzsxizrxMmG7W8KLWj98qIwpF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeaf22212-b8c20842-64b7-4b88-9c80-b4c1ca1ab50e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea72036b874256746af8366ea4233616040f5dba8b168dfe63268b8bdc4c2795
Date: Fri, 11 Feb 2022 22:40:44 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644619243
