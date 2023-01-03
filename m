Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE2B28E1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E88C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672746087;
	bh=HcVHt3ByuHrn/GcPwj585dzYdXJruKda2wSB5Uwvxk8=;
	h=To:Subject:From:Date:From;
	b=BNNLmma2QkpZ67NAbMOZeakcVVCEVK4n2/L+FOF3uugIjyJF/IteC1ka/QLRhBhQf
	 hglGWsC8qrK6brEdxn4wTvUkPAg/nFTpNjUjy8UgJxGIpLz25a0DAApKVCwCvLVV/g
	 ZJeuPOolr/+3ELsqNHYpmwVkDsw4lSEjB7xYQdLVXkPGHEiYFj/d8+ZNBCAD7ln2uV
	 iSqaGPommid+aO+EqGt200RvF7LvD/e5y/RcN7hLjzQ+gtf3GaTqTT4jK302ytTY63
	 9tTh8Ryits6NoElNe4TZPvCKUw9z1evGCTRkDYCUnyJVwXLT/Aolrx5OmpbCXs2PzU
	 fJBl5NLzG2zfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641A0C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274608739.29640.7521668572656699663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02688ecb9c667d3f565df35ab92030805ca50fd0db2650198179f8c266767a2
Date: Tue, 03 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672746087
