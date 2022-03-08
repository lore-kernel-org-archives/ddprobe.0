Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFD07A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646725884;
	h=To:Subject:From:Message-Id:Date;
	bh=gq022bxCOIGbXX14MXAksVABYMEts0EmebdBVl8567A=;
	b=QPUiRc1cLsD67SxFIfiKFn0TN98Xkt1pnoeVIqGKJ1yMkFMQ6mJiwUBKlTiDTqy3
	bFk268pHMqRdSQlliJYvPV2BgAsWENehvO2ztLZaTijSkxO7y1qvJlog+KPtb2/r7ns
	GlSl5AuLmjQwj8dc6aL80UqgaUEh5C26xuBbiswY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646725884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gq022bxCOIGbXX14MXAksVABYMEts0EmebdBVl8567A=;
	b=UEgR7hwZgiReox6Xw6Kz95fRtL8lPhrjpiOKuPyeiEuNKyrm3GCq76R1CwyUnWRS
	TF+5e13Hrdk6h8/MdV1KxPFNi3Ai6/sPBS33OLTMLvjNrEDOe7kucQ0fz8cxaM8g1jC
	B7FzdyLenya0Wdf4mnsXTPbK1c5JxxRxCyrkDF4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6882eb5f-2b2d61a1-64a7-4d7d-bd8f-4f4d9d0bb9fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac6c88fa040685f517d7d6b365696f6736bca313a63599a860116eefb5c295a1
Date: Tue, 8 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646725884
