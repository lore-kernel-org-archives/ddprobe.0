Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696887F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659460252;
	h=To:Subject:From:Message-Id:Date;
	bh=yTZ+U2s8lkTvfrFoB86D0yDqYP4qQNDwyvhUSl/2ca0=;
	b=GcYp/nCjtUYvm4aLTRxxGr+2cXE0ZT/5m1UQ4B/63LEpcq56Eg1H8j8MBd1K+I1k
	rdNBV04PnmWcLv6bTqd9PI1RxPqMRYC/ZKRQL3EKv1hVV3ti+V2OAL96ACv5do8ibTw
	Yfl0ENumNRqeRcH0hALZeO+cBBJ5V15Co/ucWLdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659460252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yTZ+U2s8lkTvfrFoB86D0yDqYP4qQNDwyvhUSl/2ca0=;
	b=iSrZsZ0I5TAfYd3h08ZM6HIX59zZCvpmfLEaNPUXV/cAb40mgbG/Y1PxQJngbj9f
	n/m3toH7Gz3sLjGvrntKyP8kJxx6+esSnHNO15C+9xIwtiaQPfMjJBSgbaDNHwz48IW
	acFihMy8LkQFASFXeXTVuI68ehp5aAxfCypzTnXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f89f3c5-5c16b3b5-2187-4780-b76c-e77fbe43b136-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75368f261322cc264add1a52f92c37494d2a063470dd05ace1c5695fd58a8a89
Date: Tue, 2 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659460252
