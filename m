Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AC0371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661093452;
	h=To:Subject:From:Message-Id:Date;
	bh=mxZZhsYdGKDVqZ9oTetUzUJUYFWJ4a0BUALAOalYgp8=;
	b=FaXnucRZKPySSjZhKB1meqJrNE521Fhsozu9Xy6Ea8byDxQWiUivvm0dkW3T/Oqp
	oPqBc+b6JDiZnOrs00o8uo/96yGkKAgrKYu/KL1a56tiykn+j+nqvY7H4Y5XHPMELTI
	3Bvp9qzqwd5miXk4ncOeyWTjq2ctK8ZxP1Ejuqwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661093452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mxZZhsYdGKDVqZ9oTetUzUJUYFWJ4a0BUALAOalYgp8=;
	b=DMtLq2FogTB8NDKh+RBjJ54BGNbmWQsWQIb5Lwyc2o+ERe5rUyj6Q5cH+97mWYEH
	TVxi3VrmP9jOwpgmp+wTJa/2ewsi4IW8PEJLr2m5WrLdmmj6oWkP5f1DAhyfmZB9R+u
	ZoHFNgs8oToGSWwKTFfrqiNA6eHlP+zkoP/rVL2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0e29b12-e29dc790-78bc-4fb9-8611-a3054190254b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e2b60fe8ee98d0b15a8437a4e31e7e20fd488b49bb1087a4e7f6f6e86919676
Date: Sun, 21 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661093452
