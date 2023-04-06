Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4201663BC
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76A7C4339B
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680786485;
	bh=8Djf/wDjfHCKfrD8ghsFhcAPNaty+qm16Z7C7PmbAnw=;
	h=To:Subject:From:Date:From;
	b=iJf5q+OTUlq1B3DAjdSR9K/VuMQUW+whHfYgboerGTuhIVJYOp7vcV8CVEOGkW6xn
	 dFZY1CKjvlRJIkF3QCjCAuTEGw65ue/YMLEfozjAabFI2Xwxk1IVVL+LPj8h7gTBGs
	 Y6qV/W1/hVGEWLxj1r+nkuojXjZk4/QjsJfrM9n1dwNvYQNS+ylpLluWLW9CtVflC9
	 PbkncBBtn+wthYHNZdvxv6vMJiNBEgrTS5sroAvLozCaJyuAC+k0yzChuk98VFyWjh
	 KlTrMiOfOZctn1skH2Wo0fCoOVnwHKmHxlu5hV3fBT64ep01OZiMYWLZ7fIcypSnsE
	 +7M7z+1asNS2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADDAC76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168078648575.32192.10678440352192603696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30db60dc215a30a02eaed6229e582eccb5c55b9c99f549815fd0d8b064363dfb
Date: Thu, 06 Apr 2023 13:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680786485
