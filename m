Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9373E2F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646330785;
	h=To:Subject:From:Message-Id:Date;
	bh=JEZVRVejn6bDibg0aFlrnlSODTXQxV7EtJdMDnSxZTs=;
	b=NxskcIdeS0SC4Lr3W3PwStDDTvnq8C8FsmFDp8CLWp787mzXghFS60uNAvZqPg6M
	fz8poLieSUOt9I0fcQRqevNac4Y8f9z8bSaoqn/M2I3YPQIzfXFkZtG65aJaQWK2ZFM
	xHTZ4zA+Tws/w//aRLHtdA24KLANwAA+KGqWlGxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646330785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JEZVRVejn6bDibg0aFlrnlSODTXQxV7EtJdMDnSxZTs=;
	b=dmrx4PbdeH9Lf9Rea8DTaLKjSsUJZEod2JqEJG1ALGuahCAF8fHgjEPx1tX12Afn
	kHFM+2nNYtV0ulweYG02lwdlY2eUR3sXNrDfRSs89R6wXNA1/SJclfcw0Tw6tzSt4Fs
	2HGLGAkTdgnlZ2jMsVzRBDF4kc/VReAJf48VwNVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50f62c2f-1eb73355-77c3-46e8-a95d-6170fa5b37f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a333b437ad70860af0a87a5c550fd1840bc2104a42dc675c0f48dac616aabf0
Date: Thu, 3 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646330784
