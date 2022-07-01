Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2711810E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656655612;
	h=To:Subject:From:Message-Id:Date;
	bh=hP6AO6C5wSxvtSqXOt1EP2gTFNYOK3x3/isjarNPnIA=;
	b=TV1wTb/XHR28+Fu+dt6Q289FvshpF0ySlkERd7t3x2XidqLZ6lxbPpnEtQXKaznh
	fsEM4003MhZ+XA5azRZJMBIQPp8m3iAUeYG8NcEXrirebCRQbgx0jurtqHwo6TPyVcH
	67zSLeaFPAEaZQ64PT23uEZKuhcabtsZrEUP0ckE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656655612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hP6AO6C5wSxvtSqXOt1EP2gTFNYOK3x3/isjarNPnIA=;
	b=Nd+v3x7XMSLkbf+o2WoKgs0+ZYVaj6cwWD0E95euPhtyfI2qhizwgiOUNZnXX3J+
	WVWRbFwKYb2offP7gdFaJg/15ZbFmbN8dax9Q7OU24YhZbRLC0/dNK+Te3JZxhEW/gB
	UTwShFoc2C806erm29exjCB6xzbvaxFDZwiy76K8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b85e89cd-f80ac4dd-f8ff-4e8d-b7af-a9443ab57026-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b0810576ab434c2ae00f409b67826854c23780cb5619f28f2fdfb737c0e5da1
Date: Fri, 1 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656655612
