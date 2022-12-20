Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53C02CA6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FD6CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671564687;
	bh=toabXtFrSJWvraHSJz65SVnYS9zCayZSjwAaKxaNE+I=;
	h=To:Subject:From:Date:From;
	b=VqctdD2PSanE9hC3VHsSqEOXTG8QfD6vZANxbIs/Mqf3WrjdHt8Gvcu817Z7R0xzh
	 2l1lc22FnbIa8IPlyfzgUBIeRorPE1MC8Y5qG4wo11xnvtgzD2cve1H29pihYqriOY
	 6D24qytMXimeCvHNJpWpwScQicCY+ehnEEt+EhlzHKEmZ3pyzBsT1ClRTTbwhb0m9Q
	 eCUGKksNsKtkK4h6+I0UL7JYJnYs4KypbmRaPXa67AeGQ8qdvE3m/P6UIbC2LExF6u
	 w1vY0nYmebFT/b4B9TXAWDan2Ekyd1TisiiC4QVCzClObEEC9ilYW9fBLkJXoNRiKX
	 +I0Mnkqtplu+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D609C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156468743.28749.16368425376709401849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ebfa528a6ccc0697eaae3cbea34cdaae5ad192e99d9c3be2dac0cadf59e7c2
Date: Tue, 20 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671564687
