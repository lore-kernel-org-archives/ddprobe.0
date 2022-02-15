Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4CC07C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644952885;
	h=To:Subject:From:Message-Id:Date;
	bh=gsQDfhZHjaRFbJB0fra+b/NTn1mJPDhr4fsJiUxL4e8=;
	b=lWoEDGC/mUeKQUniYOwn/h+x1L014GcRWtOOx+HGZjvw4mEVETc6zw8cBSHt5s4U
	Mqe/lJ1WKHtn98Qjn8jK2Sz35+a1B+o8Rs3TwBj+MEnY8Eppr8Qp3HPyNoaqTXvfa2v
	C3JzxFyTCOVs4SnSnSaivjSfCw3G0v9mzrpDASIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644952885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gsQDfhZHjaRFbJB0fra+b/NTn1mJPDhr4fsJiUxL4e8=;
	b=HbmzoFuiXz3uMZW5wNxlAGHY/TooczmmSURB48EQ7Kp6FPP1B+v/fmwDJEVcYI7Q
	ch50p6BaAbPJWsO0o4j/brho36lV/zH3TvRkRzPLP6qItxl97FXYliz1hPYnTz81aSB
	4tWAkTL1xS6o0mswD+jVy1vbD9i8Kh6s9FM8TEEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efed51621-e8b61ed8-86ba-4ccc-ab8b-3e312a88ef86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 897e62666c50cf955f07aa0d682a94f4457ea5110df7593341b9a638775f733b
Date: Tue, 15 Feb 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644952884
