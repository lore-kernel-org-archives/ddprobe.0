Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E58DFBFD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 18:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D060AC433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 18:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691433788;
	bh=c/xeogQqeqeOuSCfE+CQDINYFZ7mRDtkyH6BNFB3sP8=;
	h=To:Subject:From:Date:From;
	b=N/MP7Oot9S/gugod9cCAvyJk6ZDm6lW4/sUF98+llcdnPQbED23LxdHrgtf14oNx7
	 EgpV5jat/o1lhtWbGi13UsJrtCEM8Djs3/C3hpCDEQvTlZzHXLLQjEqVh20W08XTIH
	 CgkXFoTJsTM9ue1RLLRsgCC7TfxLsORhJRoNaso0ZKFPyeUA+G3QAOXrwLp9aEvETF
	 b/B45S9HuhyndHK0F4fc9XbOzzIkutFRmzh2kfC+bFt0VIVmf2T+3DuJle0x8eHO7h
	 ZHQZoVvChBpxpEEHk+lQEv9ecV5/JtG8dRgsH981OEYQtGbEDQa4AVwVSkFxxgyoLA
	 6TEbxnuHCYSqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B303FC001DB
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 18:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169143378872.23661.2820403544704885206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484710de3781d1f70c549867099ca16952b87fc7f00a65a8e1d22ddd8866a6bc
Date: Mon, 07 Aug 2023 18:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691433788
