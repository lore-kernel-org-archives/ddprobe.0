Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5066FCF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsxsI2yv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D2EDC433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701814096;
	bh=q8fo6iIkHPhcB78nfaxBPZ90vr2ENaAxCthzV/lKSzs=;
	h=To:Subject:From:Date:From;
	b=rsxsI2yvXxgkWWSOFngB8XUIQ8GTIVCufKuZG8yID0PZYskCKMnCnH457YvnSZxOG
	 4CSXFqizM42I2zkCpWA31onwtktRfTT4hfUTiA1Dr/PRkibLkIgZSo3aIWG6RgADHn
	 7LRxDPoIsPPJUEIBe1xoiGM6sjfzzSSHUVmtPoBVID5vbSA8XtL3qwosak7RKbiJFc
	 0assquNh9HWazF09FQ1cNSujlXCMSFYdZfb/tTmPA0cpdtZEUHO9WcVS6CXUIGDcSf
	 2c0SpJq0qKwH0qQaRNCm2TZaGKc/IBv6GvTsE4ngS806ZTo45SzvK5dquDxdiJiHXp
	 x7ayjMv3cL9gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63255C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170181409639.25065.8038783000343987930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ec0f003dc07e3fa01302d0aa317f5994f3de1da4c66c7bf1717ac159af0171
Date: Tue, 05 Dec 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701814096
