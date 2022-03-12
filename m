Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8409E614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647117685;
	h=To:Subject:From:Message-Id:Date;
	bh=GCrve4hkX5RbF4ZNZGq6VzpWJKjeTVzgEnbr6Pd8qGo=;
	b=W6kaWAnxHF9IUeeC59IykTMU+GvrOgV0Nw4/YAgkUKJ/0vqeGr0qd7hXGZG96CIN
	9IRw5LZT4VdPnMq4GnffQvxJAL6CU+pZG/dTP9TkVXQjxKbVfuNDoIOLWo7JSTRp9UT
	Xuv28zi62YSpfN4/6ZQpzY+7UCvRSlXbGN5h9mDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647117685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GCrve4hkX5RbF4ZNZGq6VzpWJKjeTVzgEnbr6Pd8qGo=;
	b=iW2pWUYdLPb1pPuPZeLVpl+Gl98as95smSDN2n0I9Q7Up1HSU1WOGVwvYph7Xtxw
	QtrYSt4qcO2ck6T0udFZW1L/76P2RcyKEBMI+sBEjfpHzurFH1huQPrZr8Le/pGsGDl
	ttDOEM+Ij8KoVw0eq5PY4kUK+1zxIcUXeFy6Hy28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7fdd503a-fe3c6d1d-3cdb-4a8d-912e-0a305518bd8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c764a4ab82e7c463cc9333ca642b160744769eb597da9e923ebce23ecfeb71c
Date: Sat, 12 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647117684
