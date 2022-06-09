Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5247C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 07:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654760939;
	h=To:Subject:From:Message-Id:Date;
	bh=9VWQhNijCQWZdVFVRK5vOeH73uvmEfPjliewpV55KBw=;
	b=Hzhxk5ERO/R5RatHmQ7Jp2jb3qfBWMxygfoKDAtu10IW1Y460xFLJLk8y88W2ztw
	GwiMHuRSgo+Q4ltDNHBkUZM+/Fe/yIGeh1Ddc/JGnDj02LeDM42IBoN9PRR4Eb4cSte
	MxshZMKAQxdOzIHRcaALgxNBviOIe2CkT4NhKxhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654760939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9VWQhNijCQWZdVFVRK5vOeH73uvmEfPjliewpV55KBw=;
	b=eZ6fvuXQFqFUBtZvREpybIocWuY0AqIk3UVI5rMmjMK1Zv7xeYAEwmXZi4UZSlHB
	QwU42Y01LzGW+LOfuOFoEHIQs5Vz/aQLx5PW5TX3ZTaenT1dRX55MCCc9jA8O80BHgt
	w5NYurrZpk44ytuJYrtOv+PFjzhUU/GPRbuKcU3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147701eee-e13596e5-b610-4000-98b5-961f1003e944-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f138a3277ed5df7115f022989142d4f7dddff401c4682c2d4ccc6c8b91882b2
Date: Thu, 9 Jun 2022 07:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654760939
