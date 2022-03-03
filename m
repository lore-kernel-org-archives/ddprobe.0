Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C37936B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646333184;
	h=To:Subject:From:Message-Id:Date;
	bh=SgJ8XBGuMw2KM1gL377k0vWpo61IFoBdhcXYY0tNiMs=;
	b=CKvFGEq87iO/flg6M7HcBqKHVDSTN2iUHBSfkR7NTWkgvSPKj610xtTeyGrak2bF
	4J3sUFNrOEsmGmWx97PTczQpWDe3Dz1G3GamBSC6AhIkHdra9TAOr082dVd95owgHxO
	T+oZw21iUwJa5T1DTgcW3XxRyUnfC92tY/cIxfKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646333184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SgJ8XBGuMw2KM1gL377k0vWpo61IFoBdhcXYY0tNiMs=;
	b=ZVK4MqxiUztFHUgStfJYt+qZF08ha3zKOQ+lWTcZEqx8bI7c34+3D4/32RtMe0lp
	mvvbHPdfTj/CPTLQm5ysS+i1yzgYnHdL7aaZL9v8H9ZAv72xcHo6foMWk+2LTGTAQGB
	P8RnXs/FMICMZ6ihCGNhgXHl9XoonSP0iSudk978=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f511acaeb-e7ee85fb-9418-464a-bdf1-81d2537c5dd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17d41d263cec3cd3bb1eb5a2e3053bebda4259aae4f01e0142d413e07bb988e3
Date: Thu, 3 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646333184
