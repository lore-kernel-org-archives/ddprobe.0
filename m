Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5177236D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661050852;
	h=To:Subject:From:Message-Id:Date;
	bh=qABqKfANIm6CMiFrvXooUPgjtU+e6xxLOGgRhuiKmlY=;
	b=fiYWyB6ulcuZXe8X48Dd0HGFyFKbl++nSi3MW+Uvix6rpF7d5oziRKUA2PtQLBtF
	67vyIoLxB/8lawF4FMztltrJQljBE+RdRjXv3JAoeE2dD7ms7teqIRm9EZfxRCsqxX6
	2VCnQM0++zqInXFrlGgsj+jkCObN3nBQmJV/c8KY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661050852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qABqKfANIm6CMiFrvXooUPgjtU+e6xxLOGgRhuiKmlY=;
	b=ksie0UTqNzstJChBrrQrr+QbCqx1k3gGkXEtFaTMYMwar3uPEQxSzpAdibU+19m7
	VD50mtptppYktnlhPBNOjGL1r5bw484sn2cGIiBhpfPHZvrAujk0oTqcC//sGghMyKI
	+MBkeughLA7P03Y6UgJ4FeKOgHCjRIVggQlYtq8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be58953d-8c0dc4a4-89d9-4dd1-967e-1488266b6d5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 263b257b46a11206ed35d581503265d75be4a6fff3794a1426cc6fad9dfa58a2
Date: Sun, 21 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661050852
