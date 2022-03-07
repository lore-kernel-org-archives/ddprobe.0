Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D52F7C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646684484;
	h=To:Subject:From:Message-Id:Date;
	bh=tQF4vW8yODANnoQQHB4mXRKN6zEw8Qa+AKAQjSwyl+A=;
	b=fVAHdFDpdcJ9ym5C3DR5j5WEPR/6f47e5baKLDkZtCxZjVRNFyJOn4P3gdbciLNi
	vgS8oeIh+WsvTxP8SMwg0Su/agpBGyQXlr/rckQPvu4rEAr7hZr2TvPsumJ+IrW6Tzo
	iIwBfyjDOvmmjDINOex9zlq05rGYGEa4aZ1DEuo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646684484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tQF4vW8yODANnoQQHB4mXRKN6zEw8Qa+AKAQjSwyl+A=;
	b=egKUMBTSIWS5aul5ocTnrzRharXHR5XA1u8zU8oUrkRtb20+Akd6gc5KNiIf1Unf
	8EfnVuJXVHFfJsI+5fBAAsV3n63lzcgE2lq8FAWt5Ut2+ZY0js8kPT53tdxRqRR8x2Y
	m58u0rJhMMn6hyalpHXzUN69ZPweSzlL7ZmsY2L4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f660b3486-57be5237-8565-434d-953c-192f8768c678-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 393688c1b23fca1bd33a72f223f0a85bd323b9b997d88461ef2bf62c33e187c9
Date: Mon, 7 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646684484
