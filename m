Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E536130
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+QyrZeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BEFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697981896;
	bh=4IPIoCBIIUs3niIjNezHNFkgW+U23jluR7IEldftjrg=;
	h=To:Subject:From:Date:From;
	b=A+QyrZegqT1/1Zwl/nfGqDaqFbMWy/nbYEfeRc7KEszYD7nxCR6gk7DOH9iN0z1gT
	 kuifEkUJMn2TqTBig4/zxBBoaH2AvJ3ji5AGLKqp7TVemiRnHRjPZvE/UX52D1c88Q
	 KQE/xwnEmLBYBGtVgbCEn9XdTGOlRQj8Fmj+5PXo/DzZQUhbdjl3wyeXB2CiTMysWH
	 uCT8qHFv+u6q4jwnvQ1V+5dt78pyUA4VoPf0vuY6YMsVhF/Y2BvgiwPjfypB7+iNtQ
	 5L8J5GAiAJREDlmArAkKEsvDYNOTfp9gV5MbFfdLPfHwrSh1Z647iJ98TxUQCHkKiX
	 ZZUksTifGVLkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690DEC001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169798189642.339.10881239449921618321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c590bc71d764f4140e5cf33940e13258be6ff50b36136594362e51a08a3b53
Date: Sun, 22 Oct 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697981896
