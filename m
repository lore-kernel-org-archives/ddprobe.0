Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112B41867
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656740212;
	h=To:Subject:From:Message-Id:Date;
	bh=ifGq4DuZTdmTZFmUQbOhtJW+Sn8SFI6cu8aT1kRBSRU=;
	b=kBjxiD0kVO4F1ErpPHawGEp1bYACWgdtE7EhFOLIeg/Q1aM9XwSPHnb7yiIpbTN6
	sLdWko4NoA5naeeD9nIr88m4abhu6sSvGKBoQOEfF1cQdIDSTWuBAs8t8/WrvuwZL3h
	sqmKmtfssoJb6EKNFgj0ImzpeVzseuSeV67z/8ds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656740212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ifGq4DuZTdmTZFmUQbOhtJW+Sn8SFI6cu8aT1kRBSRU=;
	b=TprBePv3sdqJqyRSFMKgVIyA6+57CYHzzU0+erAZdNfIS13Q2aLDyzZdK/9Scty2
	O/A5PEqh9XgZOcuMgK/u3QPetUu3lsyaArMN8Ve9TLeO4haaKBDG//jyhkS/p24CkPo
	BULL029yOpgrSI1f/pGyYub2yMfHqeY7ybupxAU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd696e8a-b6c3da73-0c94-4e40-a547-8908d769e6c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cb44c86dc169f647280a91b489e8dd4b38ee57abf47b62e3da4ff7fefb87ee5
Date: Sat, 2 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656740212
