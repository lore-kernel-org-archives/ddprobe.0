Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D0E10E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 22:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654296419;
	h=To:Subject:From:Message-Id:Date;
	bh=2cTtXKwYox8Pu0B2nRWQjoKJ1h2aLSgyys2QXB6cNqY=;
	b=eChNQQoTEzdhtqHzUpjFdgVOP9x2F5tVfak68ZB7yx1elsXtM57nROxPFxO+gfd4
	UmFB81oUAm4BfuziNo+2xz6MOR4BeuGOphHmEB+pCoXADKlc6GG9J9JRG4ff29I5G/H
	rjb+yei6FcdUNvAVUYejDQP5nqacTlCJ3+UcLnb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654296419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2cTtXKwYox8Pu0B2nRWQjoKJ1h2aLSgyys2QXB6cNqY=;
	b=JPioW2x8XqP8z7AzB59Fz78r7vVxml+eXWv+u9cPqyYwAgaZZfkmsRpPFkzKCFG9
	V1pM0T1VAZxWTCa2qUQCEAHzUnrIELyXwAez/Oo6mW114QHclhLHbVe27Ki34Ebq/cS
	iUge5cv70S+HXDd1q6nvlf7lfzyRJ3keQOQCxLlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812bc01bce-f4605249-7c52-4927-9423-0ed49fee328d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d7d76db99f70044aaf3703239b058711528b20445e3ee0a0a78ad69fb4e1653
Date: Fri, 3 Jun 2022 22:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654296419
