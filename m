Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA033D6A
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645126284;
	h=To:Subject:From:Message-Id:Date;
	bh=0kLARH8ngyNNImiX8KuaDhT1ypnn6wflu/mQonRDv+0=;
	b=TyH+sbvsgwTxt4lq4E3eiGO597B+B0+IjBPWy8PEIq8XwxD8iPsXZsD/yECTXytR
	RnvaD/FaGTEJIWaXCZDEnZr//FTwlp2UsPfDkeaMM6frgIxeyQhV1koDFsmE11ISpYa
	QhpjT/m6J4n5EoSqtBUcIdW+tvjiUIUUT+c9B8c8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645126284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0kLARH8ngyNNImiX8KuaDhT1ypnn6wflu/mQonRDv+0=;
	b=gJqkZWUynWkDMFaOkYUaNFFQg9AzF2tZuJ4IDgb1SZECKfhE63Jp4FBktGI5QDfx
	a0J09yFKm6NEBP6nijC3kiPUkYOhmMBC8f0k7714Mat80WMlRPEvs56Te10/HIkgWKu
	t/Xd0i178Mr014zlsq1KeH/K5ivTq7W2FqnWO6RY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f092af5e3-099b2561-3c6a-4b72-9127-961337fe7a97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 375282cffa5da34bf0f4b2c24f6af6cffc2f4a558838e1bb7f8550a0d1d4c566
Date: Thu, 17 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645126284
