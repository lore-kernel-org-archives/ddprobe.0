Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8045A12
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646135484;
	h=To:Subject:From:Message-Id:Date;
	bh=FIZ2EHI8h3ViSvhtyA6TSMP8MVXKLeXQEaq4UFUjiTw=;
	b=FFQzT5/5mMWzTO/NLE1b7cGYFIw+H4QOtUgPuZD+iNqbYHFFAVPZtep7FM40yVLQ
	6erjkjj5HZpEORvpY8c0IKQFpu8LCvF20XPxTyzxgjlgkFDbdyweU6701/qCgDAcgjZ
	YRqlO8Izk+cMmepGCr7YrG48Fpwk+O/ZyvcBCTwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646135484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FIZ2EHI8h3ViSvhtyA6TSMP8MVXKLeXQEaq4UFUjiTw=;
	b=OswEjMPp+ck6k27FwLjUN6nyE3KVxtDmr9rFYSsFyvDnnJrd0k/mvIZBjKTT1Ius
	h7OWQu5Rlkx1Gs44RbMCrD+rZ/MXZ+5eqhkw3U4KgB6pjtBkLx1Ks5XOnWC0EKZw7m8
	PpWh4ZfhJdfAz5liD4TB2VuyQ5AK+d96utfx72tU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f45522158-38a8b582-7c10-42a5-a470-0e10f60031c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3051f705147b3fbd1699ff7cec5ca57a071ace035e0375713a7477eed93dd459
Date: Tue, 1 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646135484
