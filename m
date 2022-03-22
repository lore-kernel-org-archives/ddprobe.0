Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988B1C75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647955884;
	h=To:Subject:From:Message-Id:Date;
	bh=DBAjjdw6pIRXt8vxiUfBLj5L+b/u5cT1X7cVoN6jQpE=;
	b=lxFcCZO9cnmIDNJ3T0jaQLTMOa99rYaSggKtqCgyjAYzBhYkrN0KMULoMmtI+7nK
	8nkXrHBrkxg4UMFbB/UfFos2tx3UoFdu3rpRx5CZBMeACP1AWCNWLxN/IRsbZD8M6DP
	8WMfy7aqVwjGzXGCbiVkDFrnyOVXueVL2zze0tm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647955884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DBAjjdw6pIRXt8vxiUfBLj5L+b/u5cT1X7cVoN6jQpE=;
	b=TPe7JROynuLz+qswymCRgWq2w3vLv99SSOnM77P4nWHJvQAg8c/wgDXZCrf0NqFI
	9KQv1LCzeT5OLKnqbX071j+CzbVc35pSwpodFb3fnmxWeywO6qYDqXF1Jc2lbQBbQBk
	N+lorY28Xg3pcPZxKcaGULAYnfdsnN23mVtlv7JU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1d33ade-eeabbddb-f26e-41ef-98c7-199f94a44dd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d215a9ba9e15e9af7956d59d9e502eece60e4157055b464b5a2c9ae1442911e6
Date: Tue, 22 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647955884
