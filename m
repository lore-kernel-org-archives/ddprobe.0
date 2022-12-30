Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8BD1FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B7D0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672417887;
	bh=oubAJ8GT9HFnecaIs/ElKdFq5UxP89oIvhYCqiSv2S0=;
	h=To:Subject:From:Date:From;
	b=I/WZ6ZfTghtcC7FdlAMQjIov+icD74e0ncRoSqQdOW5f7T1jj2o46B8pzs+sRfjn6
	 YPA0BbuhqEbIlatXWL+bpHNsdYP37+zJngMr3uPJFWV+Dnwnal0v0lq2TOGorTgd35
	 S2MF6NsI6h1JHbMe+CmWKBmxLNxYtPLJcLbK2hDcDRXbqlCvryVgGOwuDnzxIWhFJL
	 JIhRcAK6gKoI/+0zwApj5CGH6PgHyrsorsZOrv0PqBNmWqhJfxgMyq7L+G/VKW5nEz
	 O12iw7LBtLBO/Trfbut/QIlR85SeJf+71+OKMlwX/wWGtvGAkhM9MaA3Stedp2Da4v
	 enOaIVXoZN9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA58C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241788739.25734.16930066006438055552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a70982ead3782beb4242a1af03d69f324304eb362156a07956c9627efc74b34
Date: Fri, 30 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672417887
