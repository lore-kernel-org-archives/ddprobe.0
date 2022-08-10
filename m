Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD6E4428
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660166453;
	h=To:Subject:From:Message-Id:Date;
	bh=avKwCDOo5ZEtcL8K3wL4TBhW5IwJIN4xVSUX3Dfkvbk=;
	b=EMXVv9wzG7awa4aVR2lU3GrAAeQrpBXLPFItRIaTReHdET0haw17+YpdefugQaj6
	4/SaAZTcQa0N7eRvi3LWqGHg7x2UgMvnp+5OTuQYPsI2t/cSKVfj2+6zBPG1HesH7ua
	kpi8l1QTFM4zv7hw+090FGBTAbDibMdhSpKTfUag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660166453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=avKwCDOo5ZEtcL8K3wL4TBhW5IwJIN4xVSUX3Dfkvbk=;
	b=MPCPMsxAsFKpoXyGxu8VtIwlo3jdZU8SBdADkd+nGdN4RJyVXpZbf1r9C5ayFwtN
	m6vVXGIFiq3H91AI7il32J4e93nzpdFvw6eAifv43WrBfFqs+L9KiauEVyfg+q9B9Cm
	3B/0Y1fmPTyh2y88bgzJ1m2sAqLY4w+rm45Gq/9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018289a1b54d-9abdb107-8797-4ae0-90b9-8faa3f44689a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 949c41bc6e776b8f1b9eb263544fa56976963561d5720ea3ae0b357f080f24c4
Date: Wed, 10 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660166452
