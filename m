Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8598473
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFSTAA5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD04DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696680428;
	bh=z53xvdF3y3sl8E7nP2kmA0rI4GY+nlF/s03vrOEdw0E=;
	h=To:Subject:From:Date:From;
	b=QFSTAA5wqk1JQQpfr/qwVg6dOw6JAPGzGzZ0N8rYbMgMaDVuTFSI7gPOYlmm5JRoy
	 wza79R02uuv8s6r5oB76dI4RewWc/hYXU4r1lmoSonBfP9C49752zJRaGIO7ig5egC
	 D+IP5z6NkTrqPkMcjFTTxy2uksLTWmJIwwlCfQmofnWlyhJmjOdY+o5QC6SS5Qvl5m
	 7phjoGN1NfHG9Lsd+4LGITt8C2HX4FwEppoE70ZTeNVWb9uiH0L5ZGYlUg//JitV21
	 aej0LvY/ZdjRubRs4JLi5McbBh40U+lPsITFJKmRwHaqkEuooFis116IhNnwghNbuT
	 ts5z6q+LgksQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC984E95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 12:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169668042868.24169.5969536104376303455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b439cc205e8cb476297112ff9a221efbb556d65be4da068b8661a2b5b1f31b6a
Date: Sat, 07 Oct 2023 12:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696680428
