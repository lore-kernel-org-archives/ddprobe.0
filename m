Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1D646B3
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838CCC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670799687;
	bh=8+lKRNkLro3QW4C8OE9mIvLR/4+QzffQl0tVs75+7MY=;
	h=To:Subject:From:Date:From;
	b=dMNrWcrZy3cK7gRs5Zve9xzXMFtzxuwH+cuLrGjB7QTiSE0H/qSihCgUO80t9ByeS
	 IhYRbs3qGp7aNl30K8OA6Fgrg7rfhHCHOGTSQ4b47U25R8oWGF18JL6cD2RcXLoJtK
	 8S0v02jgZ9XEE1GgPYAB3Qu9vrplTb4LPGNXbMPE7Ry1GuluJ9mcypvTGpOerzLhUW
	 IgaJBYtYQQv9XIsp7GnnTa90v0RXIulfFjnfnZLyF7MEwWrsWXcWVLtTvimG48+sYE
	 JHKNeZxjq3K1oNRqVqRME3111lScuiin7QspcXvh9cCUH79w7kigQkKh84Z0/x/9oT
	 pr8iq7itcuJng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FBCC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079968740.29008.5117615724125227072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8a3f618917e29b715907b43b1a4f73ff07a1a1efa629cefd49222aeb0f8c82
Date: Sun, 11 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670799687
