Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B1F7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645482985;
	h=To:Subject:From:Message-Id:Date;
	bh=7vH2ZCKRkSxj8lnNSBuAMfilDWoL3sk+T7ZRGoYH6EA=;
	b=hoa5Ntf60663E+itK+cAsFFTRNk1FwCyskQYeYdSuDNuB48LSnUnlmEGdgOjoGfL
	L1SZ7XCgKtOdHR2TI4Ucq9e8G1GRmL7ejmYOHwwi0OI4/zTEe5Uk5iCyySB605Ehk9l
	u66y2YPulRySgdCU+cwJqBnfq1trGy5ChAzeih1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645482985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7vH2ZCKRkSxj8lnNSBuAMfilDWoL3sk+T7ZRGoYH6EA=;
	b=d9Z2bhu56PVE8Q0oBJdhp04ms2jWGzsQgiSY3/SXRuSMmNMnJZULK9fm+qRFBlVT
	axkptoU7+lpNyf1IspWpTG9TbIlFo65+e3MTwhcbfcXUr58Z59iujXQxW/8/POECEfY
	auJV86+TUPcvVQTVkmU8pk2bGZLuKU6V7VHnrYiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e6dc5e3-3a94eb73-eb61-43fa-aaf8-886bcb1ecb1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dcffbf7f0f88f819572e4ba9e6583d5c96efec9853cb48f9ba213172178fc18
Date: Mon, 21 Feb 2022 22:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645482984
