Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E241876
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644963685;
	h=To:Subject:From:Message-Id:Date;
	bh=/a4BzVJyecIMF40Ko2PZocQ2h26e84nC4o683EubzPA=;
	b=CKnkg5Nlu4ZMVtsYiwD7XtdDKwMd+PBbMjptSC8Bxum2ZvF9872QTnJYCbT++aak
	DAvIIhNnDkOGqfqeveMwBaGKU4fUUuNR34gwxJELyhEjs0uk8kOkfjh+HO1eKK6EOpf
	5WZ/EQ61vp7L0W3VtGkKD4ZdzxMK8YJjY4ym2498=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644963685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/a4BzVJyecIMF40Ko2PZocQ2h26e84nC4o683EubzPA=;
	b=ZeaDPZZ8jr1YJ8dV6UUQ02z8r2oNpvGdh5aKFFNh/m+VMO6K14nyFXCs2PI3Vpbf
	YNi4Jp29IpCW6tOKnkK76xtIiGQCwqIWrGYpDNcvVVJ82fIbhJdIHdlDffud1cCKidG
	0Q2TDk/z4SjPi9jHl2A65CJTzY1iBT4DfC8NYNaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff79e182-817bb8c6-3b0f-4520-a321-b52f6352100a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db9dcdf924b09e14adbdb6338c93032c0bd174b61e4c955cd232595dfdef2fea
Date: Tue, 15 Feb 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644963684
