Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAE8615C
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645411884;
	h=To:Subject:From:Message-Id:Date;
	bh=BiEj5cGcFeWMYDUhr5WnkBBh+rmpiAA0nuc2pyrpJpA=;
	b=fyGHd7LFaqC/PwxUI5O/ql+/ShligbE8ko7qNwkOv3vXCh6eumxExMHNOfr5cO21
	8e/P1UNtcqE0xW+YNTIdWBSCR7yRlnY5mdu/Uao//TRzKO9u36KiuQNEL57SGOp3Nt7
	PSWrQ2bjjLxuZ7hXfA5nWaBuWtcHrZLFGF6qINow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645411884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BiEj5cGcFeWMYDUhr5WnkBBh+rmpiAA0nuc2pyrpJpA=;
	b=a56xqLYrrhnEjSfrV+8483qT8ysFMGAv2FA8R2SxOwmAM6jk/4kWaRxA0rr9GYin
	VdDyF6okei+hEfNnEvT//QToP1o1UprpHtInpTZTVFNCPnc4t4osn4w/TB82mgmCzIc
	AeyNkOfK+dKemYzgWK8au/8TVDBZoQiOCClJRQ7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a30deda-3b512942-79b6-40fd-966b-909487089b96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cba4c33dc8ad0db980772c3615c97ef514f746b0ec21a885ee963d1721a97e20
Date: Mon, 21 Feb 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645411884
