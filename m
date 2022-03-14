Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50297A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647282385;
	h=To:Subject:From:Message-Id:Date;
	bh=qC9GKRn88RZAzUrP3v5wFy2EiUYcbYbP00Q6IxFBOx0=;
	b=iH40spamDohWNEGkxMFM2mMoGm3GsZvrFu9H1PhJwXPvy21E3Ag5OwaD4HP/7k5B
	WLODb5j5fJa7M4NGbzQ6pM+CTPP6vUhyDb5rh4fuj4gzlkeYb/w2j8/WNpV8W1sdcow
	2tYrjohwWF2UykNeENaxS9irKOKCFWdF4L3NL2A8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647282385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qC9GKRn88RZAzUrP3v5wFy2EiUYcbYbP00Q6IxFBOx0=;
	b=h8rvWlcSbPKNqw95V0vgAdcUUGBFf1v2hjbzsqBgvA2G9UpIwKj3f/kbueFqXEqZ
	tpd1K+iKHNc7fNFBOyUHXka6MFoyBsi7+1bs7Q47IViQGvxIN/CBlgH3zy0r1+Kk5OQ
	xT9JcHqlR4ERT5vOJm2f7bYRKtdXsvToafvNtoM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89ae6fac-bd5848ee-b586-405f-881c-bb6043cb7a2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b46310fee96fe7e5d8fa4ec4bdb8d304fa5174a9dde35bbfa972be0bee90aa4d
Date: Mon, 14 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647282384
