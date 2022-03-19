Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0E317F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647664585;
	h=To:Subject:From:Message-Id:Date;
	bh=QJ5OVVsVra1KlHffKxgGGrGenax0e4W0k2nJM3adStA=;
	b=CwaM8MQJJXF9iiRcDW7miE0RrGmCG15AuU0TL74TtSfNdxr9Af0MZRd/Pcobl9J/
	Oi8aHj9IP+kRMLesJr62T3gYlwBwM/3xdCKv1QBPR9QMcS3ZSQ+NwYnL3VT9l79hnqR
	f1ZdIVae3CNv3PqYST8tz+hzUJPFBHaMaXlpVBBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647664585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QJ5OVVsVra1KlHffKxgGGrGenax0e4W0k2nJM3adStA=;
	b=SpDJ70Rr4nVmde3lrruc4f1WGSALgN8tZZtfms7XPn4OstJD+rBMFGKpX2CmlVhA
	F5l3g9eu3lYPD8C4cOZ6ewif5G3r+sbQPnntpINNWh98L5QeRN5EmigdQ0dy7kcJPQ+
	EGiERl00HtUqUGTLg0pVT4adOfhgab9Xsl3bpEfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa076588f-1f590f3e-770a-420d-a697-c66413871864-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b06febec5649c880486275f89b20a7e90d42434e08a978886fcbebc90cae8f3a
Date: Sat, 19 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647664584
