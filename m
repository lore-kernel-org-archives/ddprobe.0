Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84DF1843
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 23:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651187758;
	h=To:Subject:From:Message-Id:Date;
	bh=HRgtCdE2pWR8UxUD+Oe4nZE8hldtonb4XEsgMnY5Kn0=;
	b=Q/bLknIU6fqI1FJ6Kct4Xfhx7xaseJrrb8MwXIp3JA4HAY01vZHuf+EQkOC93wew
	1Js/TKY5oNMmq8/SXss9HBDsw6hNd/mZBnP0mDPlJ92GUkV2/iSg6jntkQg1u+/FTfr
	lcLjgSMUvQCqueRWNLN/wDtfLdXbRZ4oDIp6RvBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651187758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRgtCdE2pWR8UxUD+Oe4nZE8hldtonb4XEsgMnY5Kn0=;
	b=gPHCP+Vx2yYLX81/TelLnK9loCTrWVu0A0qqlv/8dJKrPCVx46Wd9OWAGi34NjV9
	fVKPOnYu5pGPHoQGyXay2X+E68Q22qIYFvyTsi11QY7IT6dLQPyztQNpPxq2bAg2rQQ
	NzrLsQzduEPGZBhv/6mRa03ELR8cr5B7hNfq5KCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807275b4d8-e3ab64ae-0b70-430a-9025-2b365786572c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24da2f349c0d75e0a5b0f4422689d9c11412a9f7f36cccc758fee899162de543
Date: Thu, 28 Apr 2022 23:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651187758
