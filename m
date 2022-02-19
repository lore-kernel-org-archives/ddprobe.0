Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C995119
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645252585;
	h=To:Subject:From:Message-Id:Date;
	bh=9OhUKTKv/8qxUOvsizR+y2ACScAVlI6nnecA6h4Og4k=;
	b=iOFAqE5NoMaBbR5V3KBrqQhT2ioOc10qQbwe5xazttbiQQHoByGWfbVVGQJrQgQi
	8dLeV0uh2vtf0ishtsNK7/bzdoLH7amLFa1R3ckGug66ehB0h5GRqjiG77MPA9WvI9V
	9CdHLhpxCT1dH47J2U75mUqdNT4NxpAoA9wxtm6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645252585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9OhUKTKv/8qxUOvsizR+y2ACScAVlI6nnecA6h4Og4k=;
	b=JCeo9CrSVw01Rj9Vkg3kJYDo/0Fp3PsLhYG40snuUwJ3cSJZtNMljiTsBCPOAQQF
	OTfoJrsrUWdlKJ9H/AXaJpF+gZ9V7pRwWyzcCUfDubwYv6aAcQrZt7L+jB8s8xIx959
	5BHzgpPE0CzhXZEItlNPub1OLr8OnYm+RrLuzC0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10b2255c-88854d7c-e514-4c55-a7a8-bb507a1698f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d27e50113d37dde20131baeabfc72fd84213e8a7ac9c2786142f27c19a1d1a3a
Date: Sat, 19 Feb 2022 06:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645252584
