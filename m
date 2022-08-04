Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC8E809
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659571252;
	h=To:Subject:From:Message-Id:Date;
	bh=2gzwPO8tXpciyBS6Frf9FKtOb1UMIVTaPqamr/bC2wE=;
	b=efuv9EtazY9fuvQTNnRSh3vptQMwOAsQvWMZsV66dGa4QsUTOKeDB9GZFLJwKt11
	HkFaXH7Rw3R1mDIbOI0InUQGRAdUc9kHCFmPscfjiOwq6O3ub76iKs8UwCK+nekp1Sa
	KqiaUjz5Em/igt+G03NWZzzOBSYJhFuJsjZ/w84s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659571252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2gzwPO8tXpciyBS6Frf9FKtOb1UMIVTaPqamr/bC2wE=;
	b=XgZRSrAGqX9ziSQyMVEaiNGnTjpkFafmgXI+G4ujcNNq+0oGJeFcXAexuMC5thwy
	L46Wq9zDXXoEweeOjbp/IP1F6fMI85wc5vEShCBtJPYWwo82pXFZlJfVpFpZ9wzTZfy
	obg6Nryh4o2fn0e9ImL1woWOaKbSAsSRXuVqqkUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826627ad84-2c71fd3b-d0c1-490c-9f86-76df3e130083-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebcc3051fca0daf312c0b5dbd74eeefdc09dc25b6c62902d2448f31a5b8826f9
Date: Thu, 4 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659571252
