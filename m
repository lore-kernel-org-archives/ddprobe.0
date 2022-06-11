Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F587C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 05:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654924919;
	h=To:Subject:From:Message-Id:Date;
	bh=Wo2OP5CD5aMAH+2BesQm11xuTez+R3C5g5cIdnSOXVw=;
	b=A4wv0IVxleVF6UY5q/s9GWmhmAvKblkJa7YM9vR0Xi5JoK4MJxOfudvK07yZFH34
	2bV93vhnMkBJI3S5eVpgqcrRKb4FCxl4u6jWPWi1v0hsVngrUapByVkfRHwQm/htg4T
	2GSQiLfNiRgJwV15KpvfQqFzjeHZhWIxbzYrE5n0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654924919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wo2OP5CD5aMAH+2BesQm11xuTez+R3C5g5cIdnSOXVw=;
	b=SclWAhwlAX6n41LTn/Aub99uka7eUs/GC+EnSa3jwBx6f1qmK971RVhHDzEzvOYW
	ggOXGubLpctVPKx5k63f8awl06FKAMfStJWk2GsWuufGnw2I3RiaLUMiMmD1rlDQ7ft
	qyY6vV0sQhESLpWi0aWxBX8A69ooKTpoB2sejJLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181513641b5-e186fe0b-e7e6-4619-83e1-d04ad9852161-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c55b1ca0dd84bb0e1a780b3dbf2e3394fbdaa317ab268f9d3f19661f1cfd5b3
Date: Sat, 11 Jun 2022 05:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654924919
