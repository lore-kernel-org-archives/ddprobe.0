Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796485394
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647643284;
	h=To:Subject:From:Message-Id:Date;
	bh=c6mqm1wvUP749nB/mAM6puTDk3ZUuVp2nJ6/NtFUeSY=;
	b=NAh2y9YGC7yFHHIpB1d0tM+Kphwq5dZGT2T9/gJ1XpDOWgIDavk0wRroIR+pGNT0
	/oDbek4/mZZfntqRlpysSKgzlnq8APiSUDBvThS1OALDfULaYbChddckkZEO7Ai5LxU
	F+OXi30OUARYSpS9KYN8yuKl2l8wAWqKhx1EgcxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647643284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c6mqm1wvUP749nB/mAM6puTDk3ZUuVp2nJ6/NtFUeSY=;
	b=VvsmwKFtJF5U1CRkh03MMmKYsJrGAOEejMYWhbJFr7dp1e7wOR74twnrDFukdIBe
	iUhHOfFxQMTX72NXQFrmr5vUylECIixmiA6Mr/4aD8IC93Li9UDrdpDiut7HXpBexM/
	MZPWzWpsax39CcUIB4c+Xh9S3VspvjkuW4O9PRWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f315520-114dc012-8891-46a2-9b8c-6eab4f2b7933-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d19425c8e9817cc846642fc8537eb2dc62b0f8291de17d077aeb48556e18354b
Date: Fri, 18 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647643284
