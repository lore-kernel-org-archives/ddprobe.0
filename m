Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4951A3C13
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660926052;
	h=To:Subject:From:Message-Id:Date;
	bh=YU3DAYxPWboDQuz4MoRlYgDbn3LP3nVtYPIvgAkPHcM=;
	b=R7JiAaZ/TQVlIXbuLY6NtXBKWMBmeMmrZyoB4YkGCylzXXQMTmWbv88s0Zf1vg6T
	BInMKS8FeTr49ONuAvaYVTSZG6oLy0k4xUkPusynX+RBNIt7fYhegUsZEk1F3GFffah
	VoawHLofialRY/IF8xc8feqFaGgLKF0Evzal3wCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660926052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YU3DAYxPWboDQuz4MoRlYgDbn3LP3nVtYPIvgAkPHcM=;
	b=QKGK+pPi4lySaqbEVvfw4rSRF1kE+b7z76ugo6UXSKWLrqvtysHPkk6Qt2A0lvSX
	gOIkM7NlGHNLAny3WU6JdlUnHG76HOwnb8FtNRvICrft1isQvsFRlMopdK46O3ct2Ye
	d/QaiIxbg2BfmlUgmiWLHY7MEB0JdPMFQreQlhcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6e848c6-ede72a62-0340-4195-828c-4bca7a9c30a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89550b193cd09480f0e58d04399405a6cb2b4c1e5edf744c7fe3f3bb314a2f55
Date: Fri, 19 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660926052
