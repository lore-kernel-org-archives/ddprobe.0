Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0331617980
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTIa/xoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782EDC433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705331896;
	bh=Cs+QTJOu7TYpoXP87kDJyt+wDFs1Fr9UcfGAkjtrhp8=;
	h=To:Subject:From:Date:From;
	b=tTIa/xoaJ3NGE1PH/2YeQp2F/OoxEYTRzPibkYUDYFnmio9VcZgV+OfPu8IBykT3v
	 bFvV/R8BrMIYFYQvzCwCX9qpwqB7STjcaCssQHMZG6RXvRjDafQ1pCfpk10LJBtAud
	 BNF/ZZrprmMtQ6c/ASDnDLbfobKKLpYf7lBcGj7yyCJhwJS4S3ogW1bQUzUhmil1LK
	 iYF4cQ9cju3sbfshdN+amRoaVAoPzUruG6+w4KEat9VZKJSEwxCpBy8Ue11VCjqZ4v
	 E6Ghx8CYVBPO0wyNflAkNSJ4DiU/2Fqa96Fw9JLclVudaPuhxWS67lLEh0UHiNZDSN
	 sFyo0sdjO3wqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D55DC4707B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170533189637.7199.546487171816850673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d3cd4c3a8efda95539ec7ffe289db467673b4f62cb1260c0499bfac015226b
Date: Mon, 15 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705331896
