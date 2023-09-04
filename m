Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8005C15AB
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 14:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D406CC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693836848;
	bh=OCvr1VGBreH16HLuRigN0tZ2ciW+hll0TrY+/ban0NE=;
	h=To:Subject:From:Date:From;
	b=ScmGIW897YEgf/7C4PxgC2T3q9Wy1bdijR2AnNj5dBIivAbH6TWuz6R/kCVd4gbqr
	 VUloZB0lzG5hro0yUC4nizahfbuWQoFE04FjAKYUiSndE894SCt+3snQiyLu+1z59Y
	 r0T4lRkcF7QttPuBVo0VSMiHqDTwARutJuniauGBG5qVoN4rYGxqse5mDD/0+h9O8z
	 CDhQnzdk2CBbneL6SEyUQ8gXhF602uawfEoEvNRZGGjmetFlflwu7xI50ElqxxSHDY
	 ZQd5ch+3eVQ5eZ1K+1kvc4FOw4e0bAcyi7x7xCy8csx7zAb/ghvuuKF9xVMEvTl8EB
	 LfWwtqTTpQenw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC4DC83F33
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169383684869.32647.3169685943340249995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b04480dd0ce8379bdf32796d02622988a3f53685c997af7902f51be9080e3b
Date: Mon, 04 Sep 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693836848
