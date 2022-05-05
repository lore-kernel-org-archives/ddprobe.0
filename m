Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D51F2568
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 16:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651766818;
	h=To:Subject:From:Message-Id:Date;
	bh=/EMCTBcH3z211QRGmNWSv3Jt6l0ksEeFn63IBA3s0r4=;
	b=N6Fbd8KDl/Dae5H/vNUm2FN4ppDWBNTb0f4eGxcZfmYq1MSCSIE51AK7TSlngY16
	x1QZVoj1BE0fpaEpKP3xJKr0gWRQGAEVvpebThfvSHiiM5X02za7TwOjmI/MkmBaNlb
	N4JtYN9FF0FrAv3gxI3iXkLXUH21TWXWOWlXOKyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651766818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/EMCTBcH3z211QRGmNWSv3Jt6l0ksEeFn63IBA3s0r4=;
	b=kK5ukQRaYqS1aeFZMm4JtEN7Hl1tDrEAG+1rWhycrKCEEWK6GTpDHB44B9T89wR+
	BHIfDGPLVNbhohWr5cBQK05uRRmpKAiraqX3DXmhr5HJQe0MTQhXn6qIMWpEx28OW3g
	lFMuCQfvSkEi34wdT1ZFY45Kfg7cypAf6DZFyZPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018094f97609-6f309f51-c4fb-48c6-8403-846ee8cdd535-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ce9df02845e521bf74c89785e1c04dd3457033ef2458b6e35bcd1ead1630e4c
Date: Thu, 5 May 2022 16:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651766818
