Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50ED1C36
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B720C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666806053;
	bh=OCSyjrmWjm/azVTDVJaPfm+SHds4HLlZ8wVPYYButeI=;
	h=To:Subject:From:Date:From;
	b=sJlh1t4wv0hUgwjwuzDBTccex8NNOvbhhc/XlG0LpSdvMaD8WSSHLpNBkeMwS68dU
	 rFTo8sB2vUcg48R1TIp16AaD99HWfdyyNpRRb08O7hzb6Eu1Y2UpOcWaZjdYXOZVTB
	 zmAhhOYLC9Xv+RUnvbp8S5qXPxFFGT7ktqaNmiTvlzGFH+yb9WcfnX7UCxHgr2kmzU
	 xZjaG1eVHUEM0/la9TLrwVevG1XjyhnPciR0YxmvcTE4FfvZxAZHl92qLXDm+u2Q3+
	 VSrBSnM2VnvO10h5vXeJYNDWwm8J/tpJOA2W/NjV+3LpX00InWQK67DOzjcI11lm3e
	 Cu+NZqlG77+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E4B1C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166680605331.27146.9852206815649069873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f069dce232fcdfe8db3c1307c4278a349654aa6c9949fe0cd1fa7d5e973984a
Date: Wed, 26 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666806053
