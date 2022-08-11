Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487CA198
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660193452;
	h=To:Subject:From:Message-Id:Date;
	bh=JFA8axiz4ItCKHb6kySF+t8NPEYBZIzsF7w3Rl5cxe8=;
	b=kwFAsJWN+KuNpC742ve5vmerDRUT7X+UKQN1RQpIcOAEZ0+mNUvOJJxTMn8YwBSF
	nWFvC0fTBgtKtw0D1py0nsLBh03py9uB9BDIDVqTILqevH6ZdKzDxD9ZYAIyW1obJqF
	ulduyDmfrfPBlNVUgJU7K1tJnnTkDlZOs5nyaGMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660193452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JFA8axiz4ItCKHb6kySF+t8NPEYBZIzsF7w3Rl5cxe8=;
	b=WJqCL+tiTWz3EdQlxLK8mTBWY/AqClUoKDLjKd/D8tlKBzhMs9rlJt4vXUZIeboh
	mcJUIHGi7sOg9zkO3rOz73QEzLmJbZ04y2TB6TpeWVEH2YnebKukA8J26RuwHHr17Hj
	qqze21IS+eK45rpMYypwMVaZ+8sJvxZMj78IyF7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b3db21a-36738d32-11dd-4d9f-a676-4450aa299030-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 026c4bcb600302be2685c5c2b30adce2d8a65711ecb86f6eb706cc5319811e6c
Date: Thu, 11 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660193452
