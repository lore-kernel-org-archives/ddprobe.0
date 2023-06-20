Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBAEFC01
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D133CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687263728;
	bh=c9RnWgGMS0MpasKFt/2KbZHv6WYRnfPyE2m0DHpdcA4=;
	h=To:Subject:From:Date:From;
	b=Kb7uBWL83dd7p1zAO3u++RXSmPcu59MKQN9k4owXvz8k29WYEH3jbLPPrNWN3Lfaw
	 Shv8A+aV7UWFEucSbDedqNeNyujKXCFIGJFJvYNoRrOToGk8J5AzxGpw6+fbSPaOkM
	 ZfiolcatgFVUmZsaODlU1150wF96xxxef60jeUtS0ZE44JlwHIdyShRgAw6mJHrQy9
	 j81DNYltc+HXsQ53dmL9FI3/UaQT2csGhTndFIJNQW4OB4ciDaiZo+uWVK/Xsh6SSA
	 ROzTf9SVJA/c/ilBwQOCDDUC5WagFTTs8v01hCy1RY75hrqHoqFuLG9f3tS36mFnjh
	 iwqcHlxC39QVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02F2EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168726372871.11453.15705632048063492586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232cc1c38af16195454721514e61558ac3c1e6924c69087dbdc9db804fd98e79
Date: Tue, 20 Jun 2023 12:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687263728
