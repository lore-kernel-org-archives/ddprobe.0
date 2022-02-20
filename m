Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CE8161
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645353684;
	h=To:Subject:From:Message-Id:Date;
	bh=0xHaKGZ6gS+MkUeE9dqfXUrRjGFhCbDfv7v3eLG/kQE=;
	b=bW+uVb3iVNYrJlDCwv6cwAKn8ZdsywAATS9tR4E+ATEmFutiVi8WR7j1q6v/bTr5
	oqw30imsrf2KauLD7q9KyqFo+Hs4LbqunMjb8CdjPDrtUw3GHAnYmVzcTv1sQ6VBXM4
	TF24JCj4IWA4fmVqkLn9WYb/7QnPEu/PvwESUEI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645353684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0xHaKGZ6gS+MkUeE9dqfXUrRjGFhCbDfv7v3eLG/kQE=;
	b=a18FkzNOrTL/lAFfNS2Q3okzlgPutF3malULuEmFJllOtx58Kl780CzHVdSyyND0
	ue+6xZeTvLaZLXrrceaNOmTxDD8x7C5RPFieVorRyoCU1+hw10pevc1E5RS0+mSJdlZ
	U+/c84NVxeZL2/cQf+OkS2kL9VrV0dzO9Jq/9PZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16b8cf08-b7378bfc-0741-4289-9c2b-e0ca30c3933b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d26524800444084ec01e701835f2000ea9ab381eea7b6829a7b5f2e87513cddc
Date: Sun, 20 Feb 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645353684
