Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF059BA2B
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82477C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672858887;
	bh=XFuk3yLe7ynf/HnzOybvf5ZMctH1FnlMBnx60Ky+DVw=;
	h=To:Subject:From:Date:From;
	b=r+qlldPHvqQ8whGjdQXXOKykjjHbsb8PkB8iVUsLC92l92vVM56VQ8d3MoLSD4RIW
	 IricLS9h1MNAoNZ4ky8+mw2Gxo3DRBzPor8yyvXqr7zY8Rwxdq9iF48jjYU8kY/i43
	 BnZBvBT60GMvDgaqV6/ExmmlNOSRxZq9b8CXaUpwElVuCSZmlukT/f2p//HkIZtdOZ
	 A5mbP5Ar4ngV6obJGQjTBt1fFctd4SuZ+HekvpPsQaonEkAa+wbapq4IWkUlbWjdjN
	 2uIubpdxIr9pJr82KEcvT9EqsRTytKCwdrSRdpRtDR2dp8JdN5jE7HHocr2Sfm/eFU
	 MvY0drsaKTZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675A9C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285888741.14541.13839330802385037299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27878c9da88df2e4f4bdf1f060cbbe35d4b003565a5e462d84da94c481ea8f9
Date: Wed, 04 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672858887
