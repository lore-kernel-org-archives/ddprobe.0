Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8077E6
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qtk4NxPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793C4C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699580296;
	bh=MIK+pNfTDqnBTQeyTCZb5+5Gxmi6lSnKoLSBzJpZUzM=;
	h=To:Subject:From:Date:From;
	b=Qtk4NxPHDx1Z7nXDXcOYr+pjqBxHkn2EfPaR39dGoEaBwFT3HLN/ME9NhaE8ajOa+
	 hvbNcevfcCxwbfCLPKXtO1u6eaIPfDuZa49S0B6/Mn9a5/3VkmSrWAT00cTxF8NNvi
	 UN3YKDljZHNXiWI2+pjctszoxCwTGHGtr1YhitrzbeI8MvJYU5OH9ABe1nkkE60EKn
	 UZnEnwz0XnA5fWFyGkqhFL7ycoboI/814X6VBLAYu0bi92XfkLL0fl1gCJnqadKzSi
	 KL5QK/6eoxwS1Spo/FWVygGilFlkPD6CWdTtoB3WJCJXyqsIPamFzPr6aiGDRWokR/
	 /wwJEjQydTT6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEDDC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169958029637.26664.15020699348391932059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3317cee4409ab73e15d8de96888a1a2ac3a927ee5be6e7ad4d97ac8e6671cd6a
Date: Fri, 10 Nov 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699580296
