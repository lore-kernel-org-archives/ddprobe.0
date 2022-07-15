Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C91E20E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657873612;
	h=To:Subject:From:Message-Id:Date;
	bh=RNcoXUOroU5uCbmVdzVzRYlOH2QMwaiKJhUHI4PhhV4=;
	b=RjckLvw5EOAgt269wv2xeKuQMDvrKG+mDCMRE7eC2PgJfH/gZP58Lo9pxGSRzFDr
	4dwiz9fgGJCGfTQJLtb11mxFe/zjF8Rgz1TcNTGSycX3SehJ8CaDwtHUt5UO/yjJbLJ
	O9T95zuqBeCKouotavCIJjLq5fO6IBdD1P0Z3eDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657873612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RNcoXUOroU5uCbmVdzVzRYlOH2QMwaiKJhUHI4PhhV4=;
	b=XVaDhMsDKdD2K6u8Ss4zl5yIAWs7UYFavm2OKVycr09yN1P8KiAGtFHWDYLW68IK
	JVq1FyRJEtXnZcc3z/wW3cwnapaJSJICpLbcR8QkTTzsyZiJtnb9gwPxQcOS5hk/Ihx
	VAb02V3JUdwlenE7l2rR2JrXZl8vQuqOOgwMZvlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200f7be76-0865589e-f3fe-49c4-8b65-7bfbdad948da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a0877bfc253ed4155a90aa671010d9ddef16c52d6988c64bd1e56b808efb80d
Date: Fri, 15 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657873612
