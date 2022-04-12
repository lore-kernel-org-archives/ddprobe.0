Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8877B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 02:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649730839;
	h=To:Subject:From:Message-Id:Date;
	bh=V9ziH1JuIaIrv0SZJPek/wwTriLQ9IPr5CMmFB6UTVw=;
	b=GmiNZGIQxVnlHAdAxI9Ylo0YLjY3bmTCnpWFcDLyUuIPMi3ArS6t5u/OBiEYZesx
	XzJb+CxR0fqn4ybARdZcDZKVLeeQv9dh2ohtdCnDTjaBp4j+CwtQxxNVVkRZgaSM8Gu
	P0OnHJgN/PascpYap+E0PwAnNTpJJHHAyMvtewZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649730839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V9ziH1JuIaIrv0SZJPek/wwTriLQ9IPr5CMmFB6UTVw=;
	b=JtYtiO1/01gvU3OsY5ZOOpz1Y9hSrcPrMHegYHXT4SUHNUYJquBWiYbuPfaXEXnR
	ikzz/9gbuqi8SbtRBbcdqcFULML0krwnp9XfvcrbAsv3RY9+fljtvggokqYf4zwSWD+
	N/75/K4Yc0LmrN6j9T/K3LOvmldg2+YR6S99ZdQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801b9edf26-5f275418-d4b8-4b05-bd38-6bdd3668841e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1f1ec8e8020ecafb871bcc2458127612752be4b4d58cf9e8be00ae4f6de39f4
Date: Tue, 12 Apr 2022 02:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649730838
