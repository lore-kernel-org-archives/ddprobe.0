Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292A010E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 12:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648902778;
	h=To:Subject:From:Message-Id:Date;
	bh=q6n7bKb2EqgJcNdu15ipFYZvmWWg1Al2/SxepabbDAM=;
	b=jsYZwOjmzjq1iw6bttGHBF36iNkHBvBsKe0zzMzr0VFq58pjd6LVF4DrUdfxzJut
	QVMi1vrabTu++yhKKiUqHBGQr2Sae8NokZEA+kvREiRNwyXSTKWnrE+/h19WRgLlLuC
	ATuxUTBhRS2OR68UrUZE9aFpo1igbXTEEXvaKKxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648902778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q6n7bKb2EqgJcNdu15ipFYZvmWWg1Al2/SxepabbDAM=;
	b=kxVWeq7Ojpe8pQkezgrcUZJdx4u1NGas6yEGQc50ZjiXT936boegT9hmvFGn3nv8
	bHfYcSWrS+5k2/hTfPOniMM0wLhB+FzYoPKWJJtsj9TUIOnbHuI9ktPIQ073YONitl+
	5SisaqsL/vmX+kRYHhbtcpAoJSyKLyToaaXbW6XE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fea43adcf-a4d1e4c2-b765-463b-bbad-d59af2979f3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c2db8656fdec2760053050135349665ebf8a27bbdffd6599061466618cc3ed2
Date: Sat, 2 Apr 2022 12:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648902778
