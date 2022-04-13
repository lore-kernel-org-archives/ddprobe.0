Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B954623DB
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 07:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649836618;
	h=To:Subject:From:Message-Id:Date;
	bh=XWNRG3pwAB5nzQme5Mug0X86ZIVBsXLdss+nMYPd6Ig=;
	b=Se+xjwIGkgGMwDRxN5T/CbGHldHH3/STRNlCYRUjnKp+699VyBclW7rrDyuvaHj8
	SJ/1oEiR6+A94lSZBOUMNACX2AvhJF1SarMLsLnq76CcKKXguyqFRTgj1PbxEouYNnS
	s7dXWje7VZMyrdZV1SpQaXrttK5kuPIUWGc6v3OE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649836618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XWNRG3pwAB5nzQme5Mug0X86ZIVBsXLdss+nMYPd6Ig=;
	b=kDOH2k62cE2vlO9PWI2EzjT9UnWplgKyGSGMbgMNT6j5pG9UFwxa3LG+aD7qloUs
	Ey+as5qG65l81derBT4Wf3N5j65jTYTvurOXWFwQhuRYc0CI38q4wp8tj6CIX9rEpga
	sugPRV1sb8xfwmlv1ifDd9PII019ONmva0CVhaVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021ecf222-e6f9afd7-4e53-4e38-ab69-c578d195b034-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e118c29bb236d924c2fd1ea26a4a96804dd1563112de0465e8bf8631dd575193
Date: Wed, 13 Apr 2022 07:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649836618
