Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F5B7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657169812;
	h=To:Subject:From:Message-Id:Date;
	bh=3spweO+1DG2weO+4C3UCHWgpE1o8ywQKmT1iiONhblU=;
	b=fhm409RkAeER0cFVSsuQCGobRTiF1K7drW0iW32Xg2EFkWGbpScKmrIxSW1+uWeF
	RX5PtXP+QdSThPDSgLy7olbDQofJ6MID5i362538OAF311zXDaZWKJ1cavA98WRJ6JB
	qo8tqtzHDm8a4oWbUCwmaJlegfBNi5xMvtxquTkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657169812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3spweO+1DG2weO+4C3UCHWgpE1o8ywQKmT1iiONhblU=;
	b=GWm+J4481051UTh+fUH3rFwCsiwXjpxVlyXSgf5vY1OpyJhe2/UaiQLmXkpuyXtF
	cguNJY871+Oi7KtDeonY+u4jk1oLr3L3YsTK71MKlmA5M97Rtu58DJBzl1XLVgWYlwJ
	t8m5zvbLuupTzQ26tz0QK+ju8AUTV37G7Hbp0HHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7049b29-6d169191-ef51-4cac-bcd5-a2c502ca5254-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29f827c082853cd5b580e8bf18a4234fcacf8156d945912ea35a28c09c40f302
Date: Thu, 7 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657169812
