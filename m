Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93C98F47
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76597C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671490887;
	bh=PJ7Qvia5erzFj5nVSQMpLo3HcyfnKOOxFJJzwwk0JBU=;
	h=To:Subject:From:Date:From;
	b=n9kL62WRDdvodU3VXZYGZbN562cGriB5eWjaCfX6HeaZ/PJf1gCOlS8uGfFzgOxd0
	 YNyY1dhf7YyObgop+1HSdTmj3d5bS0v6m0XldJkaEd+mbsFvdC3MHkWljqChtUolWs
	 7MvD7XViJDbqpl20wcCxBpNMWGTqrGfcUM9qAJw5ZevbGjyTXseLUUjHo2ZYI8SCgt
	 ZGmm4AWChVQFX/aHtifiacsnvYoRHgGluTNZ2OccVlah7TxjFmduEqnzMOFFGeMAOD
	 bvOnModzICpb2qThbFtH+ZwsRqLT8On9XhvspMoUSn/CrFTfHn+ser7UYw6KhGyA4D
	 aYGFUnq8AqxiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60628C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149088738.6374.10951776788319658856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21929198e91ea43f4c455aff31cb0e8cb9038b467a14be95168bffdfa8e88cd
Date: Mon, 19 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671490887
