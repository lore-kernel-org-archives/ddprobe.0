Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA14179
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DFF8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681085466;
	bh=AhHiaQummZBn/qSOK4CPh4d/mFJNP2BXx19lnlG0dgg=;
	h=To:Subject:From:Date:From;
	b=F/TCAjUJUlWuKaHBcLFCajoi2vc7pZPlYZsO1LwCjIubHfsnKzoNiqIu4JO8LF6O/
	 q/M82B5TtvdqSSMgBeOh1EWE97Z+PFcQUiTurUT3EybQ9NEpEOsTG80gGZ1ob/KzIS
	 IeXIyJYnc2xCenW7NSizhf2Zv4QK18xvsWC50WtIPwpagvuSpRuQDKmKrjTgkmggmb
	 p2KglPIAuuqAHEq7BORPq7qCYRFfKGZXQFTCsZ5lOgO+uAdyV8xB9w6uK26y9dEhSJ
	 Js+cW8JhQY5IjdwYSvOhH1/cbp78VFonO3smIvNlQN+VGIE/1G5nKdRNs2kNN2EZ0R
	 1500mGOwck2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDCADC77B6E
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 00:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168108546587.32575.5539315304337777163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a416db7223ab275ed2224d63f0cb15bb5b385a76b493ba8bb2b1da5190b8c89
Date: Mon, 10 Apr 2023 00:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681085465
