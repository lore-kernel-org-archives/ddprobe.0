Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4322D7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659934852;
	h=To:Subject:From:Message-Id:Date;
	bh=07gnQxc98eNPJ5gKLWfGHxB3ZyowStgKDoUe96Wdw3A=;
	b=L6rUM1ERJU4oggZpXbSCyoyPmRLNxtirCoofGZv7NYfJRiDZVZd2xrFJtITYUSrW
	Xgyfr9mlNUwfWSQj2A+t1rSZDwptAGFmYnccmXP6tT2uFre65GJPigCwUOkyJF6uolm
	oAhI24pqZX/baYvRYYaTrTAdIlO02IqYQc2TzviY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659934852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=07gnQxc98eNPJ5gKLWfGHxB3ZyowStgKDoUe96Wdw3A=;
	b=MeXhFnnPUs2fcxI8F8M3O2pvysnd0rSrXBHBwh5lEypOj33G2DsITDby+8g1luZJ
	L42T8DJ2vvKXIggRxfpFb6JMcviM4XL94TJ4Z5YihYbkfUmFqgqrg6rXn7kk8yXEQYf
	j/xTizR9TcbGGIgeO463LSCWV/EOxwJH+KYmqhLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827bd3c5fb-17ac8a40-53f0-4410-8cfc-eeff8fecd2bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a985a4f79aa7a4843277e7a25e4e89ebb65f86b769f5bebba9bf1ba3e27e4668
Date: Mon, 8 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659934852
