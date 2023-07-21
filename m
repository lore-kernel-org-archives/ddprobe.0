Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FA320E4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39DFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689926528;
	bh=DX5KUBdr8VuZZMO35QuEiCxLSHMi3MC9ndUnuslzAJg=;
	h=To:Subject:From:Date:From;
	b=GTn083A3Ve71xc89pg534IE3uRex/3z7278tnXiZ70Ts1E6vmGscEJXgnYpybsc9T
	 UfEJtcuVd5Rx+XsDmgIIr8xop9JkM3ikJjtIO0Fqw3PuZbR2GPO2YRFHu4muqi3jdU
	 zOHxhqj/VWuWS31QhborwPgEBsttOh/ciLvbM33vORGxJIngyboFkfOPlY0s4JAMq2
	 bMMk6YBrReg8MKTHkMbKFUcmHOI5kIxVo5S9umCxtqpv3I4Mv6mzjDHva0z3pvUJA2
	 bgcPtBLOnvUUt5YNTRvXrbAQU6LUnOBqcIxqeKnildUmTo5XDRv9joeNKvqEqSe9UK
	 3/rrPVWYLm+dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06DC00528
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168992652866.26239.6962798998756728471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626033ec530bec972db6bbc71278c9bb86e29e8ae740f6c9d8a6a84bceb10f7c
Date: Fri, 21 Jul 2023 08:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689926528
