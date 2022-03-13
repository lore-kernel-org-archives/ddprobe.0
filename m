Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7061C7E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647139284;
	h=To:Subject:From:Message-Id:Date;
	bh=b3g/SVJQd4Z3uXiD87LVbgsxMRZOr6p/c8sIYsgFbK8=;
	b=Sbgub025Ry9YCiyemlyKDP+NhWtHJRQomk0/Ddlud+BPTKFILN761gOolFeJBqkx
	qkgOsKm9Qn3EOduXNx8tGjAdBQfECbae3h3M8bYwS6GKxzS54m+O0H5WogHgjN00KNf
	wr2x56QM9PmIor/dmhGRf+OC2adLL5iM9c+6/zuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647139284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b3g/SVJQd4Z3uXiD87LVbgsxMRZOr6p/c8sIYsgFbK8=;
	b=hXDM2tfh2QL0J0gBLvJIupaIKwWNCWCxpHBD+t96/y986GBRUxhqsTHmGWyAPYEw
	qdOyZqMpxsEJqogiRcizAPTCuAt13caSb3PPDl3yba1LLd+lrpC7Q3CM/5CjyEydHj7
	AR3355fd8m+nphag+wgeZXXbmXty2i6tgqfpABRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8126e71e-cb570960-700a-457e-9d0b-6a1fc2128266-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41ba323056e18bd335c353cc51b11b667cb8ae9bd441552d04e9237324dec819
Date: Sun, 13 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647139284
