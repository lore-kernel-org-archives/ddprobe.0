Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373183D74
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA665C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685424126;
	bh=3175vZP7gGdv3sM3ZRbanJ5GG24lCRXkw8naPjtJSro=;
	h=To:Subject:From:Date:From;
	b=bP+6opwKzONFfaVu1XMnRVSxE9O+xI1Tt8xGriIw/EDFeHRMqgv3qY+AL2odT8qOv
	 WUdRWSf7YFiVVByxc6f67of3DrVr2JwE/U2+gNM8H1B487e8tW7aJXiphbSw5yOjx2
	 I+FPp4LvCfGMZVP2To/sUIG4IuFL5kJf+03zMgPDtrGlghYW5mnQjHYfWhZg7NGdaj
	 0KppKqJBOByNpbY6IicrAdENjMW+Mj0jdyfQG7ZLjcCACeTjFejGpDqibM3gwkMcp7
	 mvdSqaWQOvOX6+6QRnpIdx/aLRmA3tDcyE2ZhdBVOVMuTOTuT8WRbtx0nIh9vj2mng
	 QLfYz547q43PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D08CBC77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168542412584.19693.9610774706016528121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d9025f9677659e98b5b6c1509042af407f9d74b7add5b801afcb9492bedf3d
Date: Tue, 30 May 2023 05:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685424125
