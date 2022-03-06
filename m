Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994BB7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646550985;
	h=To:Subject:From:Message-Id:Date;
	bh=rDw0uvaU9KWhIEU9N8l4b8LyEbMAobXGfu9LdmGRnYA=;
	b=Yzy5OPsUIboe/Db7NsC9lfO0RvrD/7o0/GB/Zav+KYG1AyTDBeEwQbzAkts+9p1f
	yaVnl2owkbvLkMGcUL2Ei3fcp5ZcPpekG2LechH99PrLssCRBkLLkqDnBfjjK7zjHAx
	lsR/Nw98NO3zZqmGnHU9PysFL5F6dMgg4O9V0DHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646550985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rDw0uvaU9KWhIEU9N8l4b8LyEbMAobXGfu9LdmGRnYA=;
	b=Fvnkz9I79yF1xhjVYPQu4V+r4D5QuNr45uyjd/gq/WcwwJgEDjOUXOtSJ/vsT5/L
	fwLqLxH8lSaOiT9a/PpXcPIfskk/5PBghw6OXg6Mqj8ow1+QIGoB9krc1k7692P2819
	zQzW+XBRoipn7KjUpUc4IXnpWZd3vhrPXw6lzQVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e16286e-712b73d7-d0fa-4a24-ac8d-b8c9f684fad8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 045eac12d0363db50aba7ee014ccf07cd16796f0da49843183ae3b229ba0ebd1
Date: Sun, 6 Mar 2022 07:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646550984
