Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248BC18035
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhENdcC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B148C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699268296;
	bh=b53AaAdW34Uw2pVXl8hj+a2GHjiC744SiDlu7Jg1nGo=;
	h=To:Subject:From:Date:From;
	b=fhENdcC+EFBZVOaRsMbVIPWDXN13CDEwDvenIKZc90r6P9acGEyQ00STGQiiqpW55
	 D8TPl7VOfgYCZ3Mt4SaE4dLvmVN5vc+nuCWah5loqDVWum9dzyLL6KQK10YEcVjdGQ
	 kS1tDIwPklAci6G9xdDmDwzNF+jhOR4HU0RkVEn9JegW6nsID+qWuqbwHUWk7GUwoK
	 MyVMX+qObFwYq+rCByUtrHFGZ1akltkuXWxeWgfsO+3w0dIpXX4tLznQmmbkJqlimy
	 6Mpe4/YgmBvTjIWuHHUtgucrZj+cbXFdfPhwaCPqGixRiitdX2Guvg/OF/dvwAu9Hg
	 S29nzBymq2IbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74A8DC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169926829646.11244.10419129602180968707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39805a72c719756e958a143c446e60e70210062a05a31d8219a1dbe1163f035f
Date: Mon, 06 Nov 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699268296
