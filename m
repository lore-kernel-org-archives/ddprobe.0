Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE3A36F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659580853;
	h=To:Subject:From:Message-Id:Date;
	bh=CTIGecRYqzWg+P8cljUbK3kNim3QhYS+GHa41DonBdM=;
	b=a/Qra9liTz8j6nB62mtGjmm1ohRHZaH/VqFJHGowLSDFsWvHdFVr+SIAuz+qwIgP
	PXt4WhxEH3z9cwOphxzj1Th1BT2OsGvVI4sTwjua7jZH8uPg4SmrIyondUZ+qrd3UcF
	mNieFKHc8EBwLLPoE6Ifw6+QMV8JCmTi3ZkxjAU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659580853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CTIGecRYqzWg+P8cljUbK3kNim3QhYS+GHa41DonBdM=;
	b=h7ws6qm67Mk4IpDg+B23LLuYk+COYI4rcveLzsckGApdCSLZaTHs8AX2665ss88S
	SsrKRQZgZUDc4BGvy+s2STVaaCHp647e7tSXRKWYVmKmUKLKpOm7l2XVOWvDYzc1gRg
	pijJdTaTaOBmV08mr7qwJOCRHTAZQuwLRO5EHUEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266ba2983-a8955ff4-543d-4876-91cd-f0617fc2db73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13230169350a7158042728942a9ab60b198c303e3d7787e61e0760b2195f4c4e
Date: Thu, 4 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659580852
