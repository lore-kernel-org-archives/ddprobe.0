Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283F446B7
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 18:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651343999;
	h=To:Subject:From:Message-Id:Date;
	bh=2Szr/wjXaOzSXCDtMfoQchzhDeI16gqPN/bLIiiYp1I=;
	b=kl6bs+QgE9bC/kuchGD58279BGmBJ9aqYviBL2PYOgQX5X6mXYaboGP1uo2r2jyj
	nlonLt7zNqzSosWCOiHrOpESZrsof844hwce+0xNQ7E+SY3mhBHGw/TRr94S9BKUrK0
	mo05u9Wm91wMv19l4yU4KESmOZjd2dAernfCdo/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651343999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Szr/wjXaOzSXCDtMfoQchzhDeI16gqPN/bLIiiYp1I=;
	b=iCM5Od23VduQaOSGe0VPLI+oPzu5fVDfVUryYWlkTnboFwxkhIBiMqv5kI4GiFsw
	hQyKJmTtIWVzarU/oZYN//5FwbAz5mnqsTjQ2n3Nr40pY+LfLTMK3lMLkR0PrxfZAGy
	AX4viXm2Y6SBg4WdrbUr1E9UIXIpQ8A1mc1A6SFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807bc5bd3e-885f60a6-2082-437e-a1d0-7b643e182d5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a554ca2101006fda7244cb93426c01e1fb803963744628c9ddf6ecb2bc73a0bb
Date: Sat, 30 Apr 2022 18:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651343998
