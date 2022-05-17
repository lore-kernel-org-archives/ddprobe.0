Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EF61103
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 05:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652767019;
	h=To:Subject:From:Message-Id:Date;
	bh=/tqgTQ+pD///nV6ziPBQ2Fh5gzdknBiiSiVGZShHLLo=;
	b=SvRTkPiUW+zcB3y2mNjmn46ESAes5+PwHQWuCML14GlFwkbqML+xAG02G4NR679g
	rPnQ70+LfXGuxsfJdJmLDk1rKaueGIiY3BPA5isEqAdkML76XobSewjGhWHUrLERtCO
	0izhRAr1snj8DNAeumhQnjoMBoD/W9IXjMIfWCnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652767019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/tqgTQ+pD///nV6ziPBQ2Fh5gzdknBiiSiVGZShHLLo=;
	b=E5YBIRn8POTutfhz74FufoR0j2YS+AwbvLWI99rfe4UcEj7XkygX1p5aYPwSRZIg
	QG7+0HTKiAYnu2eO+VoSEV/Q50j5g22m5cHd42MYMBJjBpdV4Ip3sa+h6ZJ95d6O9Vs
	R6VQXVv7agLaY53oybFuitXft6V+j3FvEsFPhQ84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d0975159-eefab192-2a9c-4aaf-b11b-ad802dfc473b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03f1b95e8e8974a181089b821b6044e91519df5a264232155c8784f9b4916519
Date: Tue, 17 May 2022 05:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652767019
