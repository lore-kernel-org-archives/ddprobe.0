Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACFC1818
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645627285;
	h=To:Subject:From:Message-Id:Date;
	bh=UJUXQ++Hl/DcBMwBYNFQuYofPcvBlpAblLtUvLZIba0=;
	b=XDBleZayXhtDwNGV/Cs1i1O3fty11CQ/L0WqAQZKVNFQ2vieW/R7c4faFyNJ7a78
	DY97F8fqRqRD1tLddnWUbSHimMSk8zKLze1DeFPm/mOOIqfYF0LfidDjcYfFlz3DuXx
	UWkk1oCbQ15vti5FF18u72/ExxOVyo8lXZkWNHsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645627285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UJUXQ++Hl/DcBMwBYNFQuYofPcvBlpAblLtUvLZIba0=;
	b=LUroRBtU75a4bveGY1Lt7cCvXDURCycVIKnwSzUN6eP3ppuIAqDPtCwSlo6MmCYV
	I4pyUKfcAALYH0Fb9Sp6S7GgjRLypUZBdrwuA8n9hp4Uxb9fxUzK9/9LtgApC7I9nD8
	fvi+/Fa8dAsu9cWQylSkGtXqge+HUCl5K6gE1KYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27079d8b-5d4ca774-3eb2-436a-9fef-52b99f6f2cfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b65e8c8eb0eac61f6bff9afec65f28e937741e08925f1e4d105001fba67320f3
Date: Wed, 23 Feb 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645627284
