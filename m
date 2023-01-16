Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16D21C07
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C06C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673869287;
	bh=uALCDwmn5OHIhrH3B47rmI+MC9KnxA1cWNl8XyLrSRE=;
	h=To:Subject:From:Date:From;
	b=JZS/lGDdhS9TBCCrmqOnx9LQ4u+iyCM9h8Rj2T6o4A2ibSYFOlRX0Mp55TK/ZhvnK
	 yrUzrKlHwdsi//jDaGkpG8Y9CphgBvC68wZhvvWOiH6Voc70ac9TRKrIU+UwY5ogDy
	 mHLWSflVOm8zxFpvOOHkXIzgUTZhu5FSZcgT41anocVfr/HrNjpHi+U1n4l4KlCFrK
	 7Ak1cXr2zD5+p9dLcBbl0m8iP40YFsw5MLT7D2mHkfKI3OBNYEa6m2pWTuOpylrvS4
	 oWWFmxfMqvHvlELAFEN1JXvW2zH8djB1+ckd0CVwOkV/PFJmjgQ1QR2Xyf2AKF2zZR
	 6uGMSCGcJNkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B2FC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167386928740.26228.7645894154564643254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226b75d39e880cd1d172ff19e5fe4cec1e040e03fa1982149f1aa516b41eaac4
Date: Mon, 16 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673869287
