Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CF27F5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 11:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651060258;
	h=To:Subject:From:Message-Id:Date;
	bh=AfSIAGpcT2Emo/d1KaXTFtMo57Mk+QMLyMx9AMV+L0E=;
	b=Vkg72kCQRaH3l4eXNhgR6ZZwx45H6R/FOjp/USd7UuYXFiaoRfCMIbVlEAUbqUDT
	N4KxBMgf7zFteZFbJe1CSHZ7pPCTV5yRdJjrxhqOTLse0+ReMZgjbS7YWHFELYa1jXP
	zHDAh+MmYt285ftcfInh+q5dY3Rkd7cpYh3mJbrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651060258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AfSIAGpcT2Emo/d1KaXTFtMo57Mk+QMLyMx9AMV+L0E=;
	b=kZ//sbaOUWY+igCSvsvaCH6NbsSdoOdogUaczqqukHLe8uAPGQjrniWeDNZbEAM9
	kLA85o3LGUeU+ZfrSaU481jsCywTnbyosphOWGj5cUuWRtTm/y/F5WbxG5SvJ+dO+9j
	rubfO1jOLfnouukAB8KAQcCLoA2CK80TpPVD7sbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806adc35c0-20453788-d337-4321-bb09-a70a1c819069-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 697767e9550a37ea9223a4cbc6f907c03feb8f02128fade955e0b429cf89ec64
Date: Wed, 27 Apr 2022 11:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651060258
