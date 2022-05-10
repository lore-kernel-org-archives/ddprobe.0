Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E181FBA
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 00:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652142179;
	h=To:Subject:From:Message-Id:Date;
	bh=4JTJqJG9Vn9LBfIBs9IFCV/T1HYlpy2VtDC9Ns38xjI=;
	b=hCFbdUbI8Gt/+1WjU70Es05rZO0h+FPLguwXLWewC9vjKe7Qn4FU+ScRM39aHOXl
	x5LU0Mv2PpP5nR4Ir3iVwq2iCEtip2I5+n+aM+tJ4opeTJxxpbiSobabZd8PFJmkL1z
	GGpBaLYXBIJH1G6xJBTR3ML78vfyV3EmWsFtt01Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652142179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4JTJqJG9Vn9LBfIBs9IFCV/T1HYlpy2VtDC9Ns38xjI=;
	b=aairdbAum0FLzowgCSU7vbfib86N/ywL9OqjH3OtmbJaxBwBvmMgXPHmWtEPTqeS
	Bk/SiXAn8RLmIWBvwWu2jNXNjEPdtyWizMaNS9XnH21spkd7HtHiVdbS4qge5Cww2Zu
	TWrkQYYLBRr/o/O0iYD3r7vka0QactguElwHZPo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab5903ec-d94c25d2-87d8-4e72-9533-8cf0e05882a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2895c5b7e3db85ce2b8fe7944b9c58a9c7aa4463c01b2d423ac02516cc26b310
Date: Tue, 10 May 2022 00:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652142179
