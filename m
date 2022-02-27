Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF083FF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645949784;
	h=To:Subject:From:Message-Id:Date;
	bh=nT1vtv12UACubx4yKn6ErYoc8pmyMcmophcPY1W6le0=;
	b=XedErlzn3Gr56lT1nWnZAoNmo2nyoklJfhrZW96tM4gJjBqe1hJPoZDp9pPcqIwq
	odu5UZ8/IERmuk+h8w4O/EIzmR1pqOr+nxk5TBVUPJ4GeuXhya9t1Pep5zdEcVJqAkQ
	7gSjhLp29lk0VNLCimtxPmNWUmkBv3zI8dd4eKQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645949784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nT1vtv12UACubx4yKn6ErYoc8pmyMcmophcPY1W6le0=;
	b=W/I7rXD2P1VIvVpL7gJmClM+/HgPZpagFe8mNVhisuXoy35p1i6hWbRxbkc7xwSD
	kyQLhm/EN+hIhhOl0Ikb00PKX6M1VsS6ELG2pO4o/vYTywfy0KNV2fnaOac0dpX+0R6
	YC5h5Z/aAF2f29NCRQyYYuc+EBA0is+PrqsuNfkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a4092b5-6f67b098-f21b-4082-bc9b-b2dacda16ade-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f219a70e0d78d6a82cf0929b34743d304b0c1425e69fe0b4b41bb2cb2e302342
Date: Sun, 27 Feb 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645949784
