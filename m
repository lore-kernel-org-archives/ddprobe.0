Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784D95CA0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661284252;
	h=To:Subject:From:Message-Id:Date;
	bh=dKXhuHANXRYNn4olSJfM/lvuVK60bjLGm2EC2ZSZ0t0=;
	b=Jnvkv1Nw3wzEY/2hJY8X0dJA0NbcXCtAp2OiyYyQfyiqjo7sRIPlKcx/EhMAPvHQ
	QUIn6IodVpUg/oPkkcDDSF6KjvIXKK9WeEjtMoDK/lKKCkYhcbQU+akD4vvsyWyUqQg
	UgdZIU9FldZYYRGXzOYSWLzk2EHOFFGUH1/XPx5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661284252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dKXhuHANXRYNn4olSJfM/lvuVK60bjLGm2EC2ZSZ0t0=;
	b=b8WQAPlxXMPqzbukE9KId0k+CEkWZDqwf2E4rjXriBreAob+rRfRnrl5VXoTdfVM
	eyd4LcTG6W0C7JUFu8JiC3E5VuwzXdQMgz4Pqs11y772EPuF3KPZBP+03zM5J99udNX
	6p/v47tNcKd5KdZ09RxxpeVFixeeYVoUjGadyEdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc41fb78-9a785adf-0092-40f0-96f3-f4f684d72fe0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74389918a245662acd57c6f2a94343238082182827fdda262edf24910f9e4552
Date: Tue, 23 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661284252
