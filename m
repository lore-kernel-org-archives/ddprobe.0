Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D5F8471
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 05:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBB9C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 05:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695877568;
	bh=yrH/R1GxXcXTBPlfIu46ceGWGQkv6BBljb3NnsCupF0=;
	h=To:Subject:From:Date:From;
	b=Ym/sOySNRc9j21HcAjkKYbzL3iUce184in5bgEuKJRYYw1LiftGpJsjibnkgjpo/X
	 v47lYR01DROaAdW+2LTic79xh7BXJc/62naVB5A/tdAjJgM2HlCxorm2xEYdFzRWbc
	 aVQNYXiq7LxNG5bGaGW3WQ5hevOUmTJB7/g6kiaLKCuUtNsRAtSZLli3ZmdHDYtEBu
	 4itTlYxPwlXGtHjSuoElFL9/hKFNvOaqzyqNgsL6UGVMd7vyAcbrKlXXxcSbjx/APv
	 BNPI+XA+q8B9UFy2xWDISb6bzUjS12d19qOhVutOzJCOQChqGBU9wACgiKcZqtpgBy
	 Z6wFq+B4N1LgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB83CE7AF9
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 05:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169587756869.23135.18255949955141831112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5641596eadc227393d35050a7065a326b4fd0da10b862931a1a084d9153212e3
Date: Thu, 28 Sep 2023 05:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695877568
