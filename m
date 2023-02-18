Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38612641
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 05:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D807BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 05:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676696705;
	bh=XCQ1N4rLLF8xzQZAR/p+Z85dIaDPnLQ+3KqPnYz6ouE=;
	h=To:Subject:From:Date:From;
	b=Dwp0PjI1ZWAgL7swHaaI7YI8Sj0GknuaT0EG/WbcE3/w0zc7Qc6Xs5Ba0D8WKXUUV
	 yNQfFEUd2N1Lk9D+R4dkI+0kK/Yvd1VmLYgybcmuEoX9Bzapm1JpMnY9z8/Jmn6x8h
	 bRuKFUZsfBiTEkoNTpFLelfOroI/ws6iWXI22Rv4JTwrGfCm8fp8oRUkCCaMyrIrB5
	 NlHgQl+sYfnu7MbHhFNbqXFl2R0l+4nd0/sZpRMmwUl8B+RWMDWaVquRh/zmBDwBzs
	 MHhsJ52wCS/mfcEWByYaucUdXEG1w/aYqX2s3cPKY4ls6mk4jrEjeFny32yTMwU7be
	 q4iJU0lHnev/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD850C636D7
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 05:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167669670573.23951.7555245347946728742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6d0ba1bb1f7b464d99f37032ae51529affd254814dda0428d370adbe36dfb8
Date: Sat, 18 Feb 2023 05:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676696705
