Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E4F7E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646412385;
	h=To:Subject:From:Message-Id:Date;
	bh=CK/n/Rpr0OyAoX2Gej+Heh25NSsU7yaVs/Ilhx2WKas=;
	b=bfJIW3Wg70ZWcdJj1DOHA/Z9YVm/I2IxBpPhqBTK8ncy3gYALyZUIR3VRcWyKrRK
	i10EJGMgrLlFE+WZNLzT88HqT2ER5mvxW+yf4mcEtMf87ogNFcE5VTCIaZPuDlB0n0D
	KonFnR62WzmrOGNJQtBlGjnrBdvC0lEdz1t7x//Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646412385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CK/n/Rpr0OyAoX2Gej+Heh25NSsU7yaVs/Ilhx2WKas=;
	b=HH1GGJMFldVabl/w2wS9YCtjl1C/aQ1+8b17noUl6e8Oifn8zUIVuGNhpQX0Myot
	NOvHWJ5r9dMfCViN5uHVk0S3UlVqLNi7Kjjit3V28d2S9Lnr4osmMPTiLhT9K6mqWI1
	zQqjI1YxeLO4LmxwsBKFFLBl40rwqZdBO4bQwRZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55d349eb-d44d95c8-eeb7-461a-b384-d07534309714-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 665271bb0319fbaf71befa71daaeeeb0e0864316b23d88b74beb057356ab637f
Date: Fri, 4 Mar 2022 16:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646412384
