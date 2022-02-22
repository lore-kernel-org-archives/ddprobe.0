Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FA4634
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645541784;
	h=To:Subject:From:Message-Id:Date;
	bh=OWwgsK3vDKyDf4ASAI3PB28pRDbmImP1NBwnsPWIMhU=;
	b=NGqel3GI1KBO8TgMiW1i+tcRn+DerbDXDHlDJSEkRwyCSWFBL86+gmfI8PHoSoSx
	BXqDfjx2sIH4jpRDBzMl02hJ+RUL4N7C3vy4fS1C7/gxOtF7zfGGHTsY7fHBS6fSxwh
	6MzJG7SgbwC6y8IiqB45tVrisdhP7lXO/tIp4YFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645541784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OWwgsK3vDKyDf4ASAI3PB28pRDbmImP1NBwnsPWIMhU=;
	b=UVqLv5EQ57Us0wdkkI9/q+3qqvkAaMMtKHCRCc+RPGXxw0nod1bn4HTHR8nimRKE
	11jLpPcmXMjRU9hk9zUcWSF65b5VZw0eWFthZ37WVcVPzeqNP9BVSbsbAl41b2LnXPQ
	OIvANrp7mngwWklpgHwoZNwCIml5PmkDeLnuTqyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21eefce2-67089267-e2c1-4d17-86fb-44e0ea3a5321-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c1d86923afc3b9fe98b4d990232b29f613779afe7251e402706c99bca4b3c45
Date: Tue, 22 Feb 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645541784
