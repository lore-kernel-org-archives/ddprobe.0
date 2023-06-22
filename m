Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7F920690
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F52C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687471988;
	bh=vml0HAuaY0gNfq7n6a2GZMR7BD3MJu9W3RjNnvsiqNU=;
	h=To:Subject:From:Date:From;
	b=ulsxQuGaXqukjko0YTYNScCKmyIie3nZ0j4YPuUeSj+Zrc6kFEU3uPOkXHuY5IcQ2
	 qmqUO6pN7eLmaKTGv3y9VZnnjzNea+Mz6/5FKAtAklISrjZ8a+r6jXGzuF7Xva8SML
	 pmY6DGx6bZ+FUvnZyKOmSGpl4RFPb2wC9Eh2Q3Q3t52StGK6sKEOT2PRuCnVPakEim
	 gYDRT+yAC6pKCX8w30UuZrV8MBD9DUe12CUjRwI4WLLiSmxLK63HUyFGlGPR4NwieO
	 g0NiWqr+KubmRugq7t2pRYsZFYfOk9Oh4kClARqd9t6cr37mSV5M9xgLepMrBe5mch
	 qnq2Nnek/rZdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7908EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747198873.2495.9018653919182708575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9cef22ecc8ab081bfc5e6915bf37e5e7ae9b9f02e8d3c3018371bd8c7b6fb1
Date: Thu, 22 Jun 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687471988
