Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE22510E8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647303385;
	h=To:Subject:From:Message-Id:Date;
	bh=4ckvSrRlsFMihTr7ATtsbxprjBUTLZ21aPIgZtWAr5o=;
	b=l6YgIw/tZO4f9aW2EnFN8EyLhOFvavIkurTQBRxbrmThfeCQ60G8xAhMJuLoE+tg
	U5xWF0NuQN4cyghWL2Prn9WFZyZ3n7iGqJ4ki2myp6Qd7rw1R2mgxs68PdxUF2nQpsU
	4Ab8HZ9J4v10Gb7ggpCtTZh06yZB/5wgzXW52qvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647303385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ckvSrRlsFMihTr7ATtsbxprjBUTLZ21aPIgZtWAr5o=;
	b=QIm/aiEJxQrH8A0C6nbVuRrPofSO0s506PcbAAJ+N7UW0VUNAaziy52Kvd3po9sJ
	qPnlJOqPA+RP96dcmVtqmRZNFW10pxRcTgzDcRrKpYGuohI9nEEkJfHcLulxR5AgRo1
	HuGkVpT6UNxjc9oypvWlSbPdIsYLWWqM031GBrB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8aeedea9-8bfd756d-ce49-4d6c-bc72-d0f84b226efc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 330537d623f444aefa34413a96ee70217cade7ced72a3183a4cc771bb9c542fb
Date: Tue, 15 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647303384
