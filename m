Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF6B258E
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 16:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648659118;
	h=To:Subject:From:Message-Id:Date;
	bh=ShSlfWinnoDQDUOVwkAaubtzvUgA66apgZ/GlTssis0=;
	b=YVP+4zQasQ0kC6+B3UBGWGh2OfNhzroElvtzN4nsYr9chMBzFDn4SvWXy+fbN8an
	qMOqdYO2kOv7UOj9D1J3MzwfHEy6N/GvNr2njY+IoUDhkGp6abnckmzIU/VIpB9WPwn
	+23Rc9H3ib0p/ajTZjym1wtN6XtxPZ8InXiiVOJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648659118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ShSlfWinnoDQDUOVwkAaubtzvUgA66apgZ/GlTssis0=;
	b=PzgsR4iKJuqmi4NH05/iJHFCDBFeeoTL5EVy7WoaMZmGqdmKgF+E5PTHuwQO/8Xd
	8Y/XnjDZ4h8xyL4VMsvAdq58P9Ca0t4XpawclBoZvH0LDmXWQxabxVYiI+TPU6Ej+2M
	DNKRj1ZDIVLXWbhazNPky57F0IJ+M3AqYE5itn4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdbbdb8a9-b7ad6d92-1581-4092-ae91-0c94001665c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d51deb3a5329fe2a32269574a21d59057ec4825d29f3d767d128a34eb51e908
Date: Wed, 30 Mar 2022 16:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648659118
