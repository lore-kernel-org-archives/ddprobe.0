Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064ED1FC0
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 13:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648129138;
	h=To:Subject:From:Message-Id:Date;
	bh=jdM+5QXbPe9CRCdthAQEDDB6hDcMtKA5CxBSJywuY5Y=;
	b=LiLcbhQyu4xs78KQEp+WuaSIVpzIetFS7wDvgl5o2R9pxlzrb5eAAq4elHLRXTdG
	KSmCPzQzTgbmarf30Fc0V6ryD2ui3OLsMSi51fForfovuKfNw1/eLLpMPPuCpA7aSny
	BYT1zaRQ00iLtc058UBG+a7C5UByaTcuXCBfPsmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648129138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jdM+5QXbPe9CRCdthAQEDDB6hDcMtKA5CxBSJywuY5Y=;
	b=NOi3eCMJ9sW3ELazmEcDFSf9dmkh2VapHYIR2bOe7Bnb73pvs3W59bAk2z+nki8z
	R4BimHtM2RQCpI7qh0x0kvRtjWN1M1i5uYLqp2cPSnSVS0Bl88lX7L/rm8qx5pqnOfc
	XX/a9/ot+vLsmloNCtYoM3XTfVuElGv8933fcLsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbc26de90-4b757f9b-0a9f-454e-b009-214d86d69b9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fec0df8bd39793b8ca2eced9c66a2ac78fc25ca3b8a09e80b87e21c0a7c22b7f
Date: Thu, 24 Mar 2022 13:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648129138
