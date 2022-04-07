Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF7A258F
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 18:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649357459;
	h=To:Subject:From:Message-Id:Date;
	bh=sknbs7HiMWOL1r+Q2kFBF3ULvbFuJcsVoIB2C7sKPm4=;
	b=WQuorhnGl+ZSQSZ5D1e8za0LV1XnRlGXnUPfedRHaM5c004mfm2J+lKbo5ng5LoO
	sHb5AQKlCWf5lTFnQnwb0TJEs3ZmOjQsBFJHRCetIXi/GIcjCueN5oBr2fBpTGaTEqw
	0IgnrFO8AzV9X5ssvyB22slKcKBrT+oxxIQnKz3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649357459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sknbs7HiMWOL1r+Q2kFBF3ULvbFuJcsVoIB2C7sKPm4=;
	b=dCQ4XA9fmT3rLoqMSj8WoP9NZXzjP9lNovD4Ec/iszOStyYzyvMdlHkeMb5njJqi
	DNG/h9BJUu0YfwMc/2Hc2IL+hF5MCxfyZmBwNeDWtnC1J480Xtpk+JYAx/RLYqF5nEX
	sGqCxaM+Kr3XEQPRw8nfPW1THrH9y4PTuW8djJOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180055d8b6d-179a6625-d61d-4d63-bcef-8175fa3b5c6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36fb9e18b3a2291a85497ace1a758cd22746410caf39972adf7fbb0eb9200018
Date: Thu, 7 Apr 2022 18:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649357458
