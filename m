Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFB1EA0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 17:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C428EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 17:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689528068;
	bh=/AckOxEvVpJt6VapFwCIiZuMyZErT7XyaU2BzWFTonE=;
	h=To:Subject:From:Date:From;
	b=gIjZ/VGLULyS0TOEYVzStTU6yi5LQWO2e0ZJqPdaC/4O5wa4TiABa/dtlRNxa2br2
	 B6JeGJRA0+Pjnmm5UPywylu6KvxP40LVwkK7v743yEhPepHwrXabStVsxWWq5NtUlM
	 LLUU0S3vSrm9ngLOc9CDspXDXowvAdq0uLuuI9+8V4p84DHM0UviO+kkmUnCijwoha
	 xrYre/d4O3tnrn8CC9obwUskNS4fpabRUdRHKqkdXElPN7/2WGqtCQICMF1MO9+1Fd
	 wiF6CY7cP58OMlESye3i+PllPd+ltUi6b/C1o1jsvht3EvLdQUiEtTCsDAXEfE/sDD
	 EfNdr0VsoD7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7994C0015E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 17:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168952806867.14505.17176988787842581925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff43d13a6887a464abf9a01768d4316a2d2e99fc1881ff005ed87c1078b3404f
Date: Sun, 16 Jul 2023 17:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689528068
