Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E91A3FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647794484;
	h=To:Subject:From:Message-Id:Date;
	bh=Rn//mmBSws+sqPlBfZu5FuvMZuU4jA68epT7j7loyec=;
	b=joGbXAfJOL4xQ7CYncRxt7agAzQmTb5SruKdah16t6bxHMuz3QEgOja0Z5BbnKDD
	yn5ZJnlIkisPYcozbsp/qiiqfXsuUwjbHn5b8Yu4ZdtAHZMzwb7m/SNYGPkIs5sHJ++
	tYudmvRJ4fDV83jsr6H6JmU5fNbp2P1jeFSCgR6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647794484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rn//mmBSws+sqPlBfZu5FuvMZuU4jA68epT7j7loyec=;
	b=j2CL1DOm0uxvjIXUGCNSaDTzJFt6c79Xei7yAP0hG8SFNVk09S5r1L8QF88zwKMi
	4U+0GhGA+xhtdjy5HWI+E3YSIi2uRyPghDvxSUKXAExM+rJE6F/Pz5gd2WIj17Sseb0
	fK1Yvl/3Rqup+BpacEzYPIuLyIJcKWPdPdSRs+eo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa834761b-acaf38e8-c0f9-4651-aa11-d6b0a6122b36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 676b154826755568e3155d66bd427fb5b7506f60e9a93da0ed82ebf5926a987b
Date: Sun, 20 Mar 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647794484
