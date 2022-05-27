Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158481FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 15:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653664859;
	h=To:Subject:From:Message-Id:Date;
	bh=Y9jT078bedZwBHYehzn7lD+ymuqgSCxbJ7uwVI1Cme8=;
	b=UCcQxGPcYaefdNFqzdfx4V63iXiXa26R6eRAbVZsA31/O80etr7q6z3Y4q08XJ+1
	dMXKQIjQrcRg5pzVWBrM/xTv0wS47ycRLrl7DrpVtJjAh6nOh+EaQYYdZ+8IVpppQIZ
	NcyA+MRd2zoxIHp3vPFgzfJjPSdKmCWmr0QJxk+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653664859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y9jT078bedZwBHYehzn7lD+ymuqgSCxbJ7uwVI1Cme8=;
	b=QT3NSdCx5gI/cafsQ9eZ/ZkggxYLgXvPCllx/CL/27FGaqM5HWrA8uMPXrtZHjeR
	rN0WUOMTseoqtYpQH6I8DPhSzUR6WcJ5w4BeMI/EOWnA2PXDqsbhkqdQCNpf36DbbPe
	prh0faLXVLXiToQ0KOkZK/4ldsxazfCRhHNfwAOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181061b4476-6e17f78d-299d-4dc0-bd0e-96ea099db949-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36d063b35b3a9e9687c96fbf6f3148b70a46c118cebeeb60efff8181c67a7f63
Date: Fri, 27 May 2022 15:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653664859
