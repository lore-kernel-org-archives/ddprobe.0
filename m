Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ED526AD1
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgr/NCjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D711C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699991296;
	bh=YgEs44WD503mm2altQW54s9DCTXMTzEiQ1U95c9CA70=;
	h=To:Subject:From:Date:From;
	b=mgr/NCjmMiLfmGYeZJeVAj32QBa0s453b8bUw6K+M63Bvsu77R3rV6Xd1Xht/8iTl
	 xelE7UkuN+WxNfBrfOCmhzVWO+l8EUKYPysql05n7eBlpRWd0EDOTD6qtsNNMDlF/f
	 zvF9tz31+D2vKGMrIEq9N6TVyne1ulYlJG1u3SvSB1rkKTT6D71ymK0vP8P9V5IfUQ
	 QcEoKpwYiSFO5ATjrEHOWQiQoZe1aTwKdtCtBZS9lmsEDWhwsMkEZEVXtPYO2yVCE+
	 tDK9QHSJDtD409LAHGwt3J0//bjlCG1i5dpor+pwptUGe22Vuf89ZwNI11VNF4scGG
	 HDfa9PNfM7G/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E04DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169999129646.29099.11591168261639660414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec52a99bba9011e15adca42f1d906c59577b49d9a819e9957e82c5dcb0544960
Date: Tue, 14 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699991296
