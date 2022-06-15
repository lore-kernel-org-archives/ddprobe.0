Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EA77A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 12:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655294639;
	h=To:Subject:From:Message-Id:Date;
	bh=PJX6CIpNgFofJruMt/uhXmSsa9D/wgBXuvGH9oL/5EA=;
	b=QcmKSkTXrf1pFxjXqmpLpPkg+Mn/UyczR42PZ3eGZnsuy1AewIRv3K325R+8KIpL
	HLRSujn+vcSGMZOF/X4Ni1V1JbaZ92BUS0eyhiLXBfFxgyq7jg2Fb+jy0YpPo1EPXMS
	7FA+wxBckFzthsOOojm8F/dovSHUMD4t36HqNkb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655294639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PJX6CIpNgFofJruMt/uhXmSsa9D/wgBXuvGH9oL/5EA=;
	b=a+QMdTb1YyBO1tHZPn8Qgj6q+Gq5sj7O4sS7411PpSqCX19TBD72whQKSRnkZLkG
	Oi+VXwSpRSLe9KmuboiLH8KO9krn2d8oMxriLFNyff/OzdxJ1GOpsY3husIuyQ8hPUl
	Dvotc63dqCqpqyyVZ3eWWdOr3hgDF0+G317a812w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181673fbd22-e87c20b0-1201-4c54-a28d-ef2263c0de46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dce788efd544c1ffb49d7ed6e3884e1f3145f0e6b8e9f733f6668cb92be0935
Date: Wed, 15 Jun 2022 12:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655294639
