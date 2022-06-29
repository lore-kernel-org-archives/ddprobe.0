Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063577B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656493012;
	h=To:Subject:From:Message-Id:Date;
	bh=G7F19x3ybeSd8pHtbTFH4FY4CtDRInmEfB1nH8WVSU4=;
	b=irhFvXkZ/EuQBUEqSO+Dildm+JPfi2uY8mUnDW8r8NoaJx7rPnyFGLAKDobbBL4k
	8W3uPOva7BYqRbS2VJ5AagSguJ1qKw0AO5HK11j6NNpnkmMivnDWhHceKi8+wnLH8bj
	xq+3/T1fedQW07tuEvOW/pXevCKEf5ukgDg5PbxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656493012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G7F19x3ybeSd8pHtbTFH4FY4CtDRInmEfB1nH8WVSU4=;
	b=cxHRQtfXmHC7rgqlH/xDTaZYkwHiiFWpRSWR/46eYCi76zy9HkZR0XuvuZieJ3P1
	xHeRdwXGN+EIDdFAyxgqMwGYtlbLn+LyoKMlQnYUjQSg2X6mn8h1NLHst5uSrq2EOi4
	EaKwUEiz5Wn5FIWF2lqUhOJ82BP6bFhu6AR7vUkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aead752e-af70f474-6c6d-4269-9927-d72a634d9577-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c74ab8fbc64b16366d3051b103f7064059f5f328b4cab77bccc7b4a8b671be1d
Date: Wed, 29 Jun 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656493012
