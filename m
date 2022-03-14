Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDA97E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647240084;
	h=To:Subject:From:Message-Id:Date;
	bh=6Dc0cnc4sTzQ1xATmVr+TZGz90v80a8QhEyJm0P9psM=;
	b=gFRg4R7EAkUwc42n6tWnhEdq2BLXazzPk07jyCJOUYQ3tqo3bmTRzdlPXyJPpg27
	Ej2t+fCztvIMUWNWgV3PdKwDoTlUusGdTLgeVsqCHwKrbhabAvM0uSM/RM+Ee/uFcHm
	WlqxvIq/z2wQdjdQbEahBq/QLwC7qEIWMGYiCu4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647240084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Dc0cnc4sTzQ1xATmVr+TZGz90v80a8QhEyJm0P9psM=;
	b=cFNLXocclWRtFRSmzfj1cxHLvpsrQ7ADnEPNbZ3kEu0tc7GyW9bXJzYhYVpw8m0X
	JIIlbOl2EWYIfFzerhVQtLrVW0w9DqOU46R+5IvU0BRaJtn/JchIrX7CMWh0cb1A3nZ
	SI0Usycn6Cf+uNsqAapMAHjwjPBZ9oGwBXUh0VWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8728fd22-a85bec5a-210a-4a1a-b683-2c048d8def76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afe071085cd3d06615e498c72e44d80d9c68d1b1db470056eebb860163739b55
Date: Mon, 14 Mar 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647240084
