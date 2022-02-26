Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF9928E1
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645887984;
	h=To:Subject:From:Message-Id:Date;
	bh=muDDSFRdaKRiHR0PGovAnS5dZoJIq2LqzLtXOi2YQgM=;
	b=BRja2JcG3Ep1aB5vebJEJ2eLDjMlpEUzm3jP5nCXGygcNGaHRo+rYfXf452rriVe
	kWFRPZacUvNbRTmx7ykWhBUKupHr3Q+1+AYrjaVd/AWDe+9HMjtOBD/wGA6GBMQNxsw
	pSCsYJDC/pK8phl3u11gLZzMi6b8Z//9bayk6Zgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645887984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=muDDSFRdaKRiHR0PGovAnS5dZoJIq2LqzLtXOi2YQgM=;
	b=H+CRQ/jDtyw1n36jNLIM29ZJBZvLRoSWOemGSFY6ASoZ/WZlJ88SbRW7PMGpDyys
	1pj+WL/5wmKcWMzKFtyGH9Clyr1z7Byxl9S68TN3RjkphoEW+mbwl3goc80OVcpzIUm
	jF/eco+YV3cfwZo0QKTldBtc2nEKeTLWPrUcYXt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36919462-bd10e024-789d-4d6c-bb37-96cb21346214-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d92c335ca52f2b6e3b889c4dfcc6bed6748e0c0817f94d3716f34115c6b91d0
Date: Sat, 26 Feb 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645887984
