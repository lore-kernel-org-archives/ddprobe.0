Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3310D7460
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 14:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655390639;
	h=To:Subject:From:Message-Id:Date;
	bh=e9lm+9zK9H9CAJ4RUhPFGChjtGqOrp+6nulv5+Xhh88=;
	b=bfW//8ejMN2T3n2tW9cPfvLSqXe5HKnV+rsVL7WQYr87uQ/CSgxFcM8idsDdSJus
	68YaaPGpJdP/LwlFhVJgmDQWjj4XivUgPjraY+CNu9abzk2UjcUUEXdlElu9pvPNtAi
	HJ70fVHId+kVY7pC4nZtSF5ez0+ccZ7JdOD/ndMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655390639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e9lm+9zK9H9CAJ4RUhPFGChjtGqOrp+6nulv5+Xhh88=;
	b=PpIAvJfwiFC/bWFIeFtZ8PieX5vrvsqFx5kY80qBPWpgBXLaRJEKNlmJIs26oyBx
	de8AnC5EQ6tyLT1/CK87mRNxxKxYbImRymOyLfrfEmaW18/PEZjOzWgPxAgpL2pPX/A
	FDKnB5TkJVBaqdT0KCwp9xAhDyLkZ2IOI0jv6WhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816cf8951e-2fa0ba6f-405f-4480-b31c-628b2c0c7ed3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eeb88e63e9747e23cc475275caaef9661ebfc44107aeb43d6737ac026d43587f
Date: Thu, 16 Jun 2022 14:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655390639
