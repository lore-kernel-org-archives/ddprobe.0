Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD581FBB
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 11:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653736499;
	h=To:Subject:From:Message-Id:Date;
	bh=1m/8gtSM9naH9Fc52na6K5oSbn6PACCqhvO3bRhN+38=;
	b=buaQtzg77YK0jzmNoOcx+PwHjD9x9GpVQMvXkWFvnf/WJObgKYnu8bU2y0R8eaP/
	SGj/R+GiwJubhZE6YOyuLTYq7LvuCZ/k9amFELU9dQkwTeYemE44nYphbF2exgh+07L
	2l2fDDN5ZoZ8naGaDEzv8oXiM5GV1VfV1Z1BQ1QM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653736499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1m/8gtSM9naH9Fc52na6K5oSbn6PACCqhvO3bRhN+38=;
	b=kTMv2J+PkvWupf3R3ZdVmCi9rirf0VyHrmTEs/xGf6R7E2I6LUQnUnNs/br6KWp4
	djK1bNUVdbiWa3fCHx7GRufqGyP87MTiNVJkmaOjI9I92nNAK4d8bFTcL0NPRFgSNqT
	94SZuVrSOI+7Jj7qRxwrwyr4jGhgZCNsa69wnWV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a606841-d62cd3bb-8056-450e-b98c-0bd39417c4cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd683112c1c940404b170a6255af105764b4ac0246e19c650fbf69973168f34f
Date: Sat, 28 May 2022 11:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653736499
