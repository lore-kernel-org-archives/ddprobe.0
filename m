Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63282F30
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689A2C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668692454;
	bh=7WVXaP9KzS+6mPM/deOcjfWkg83EshVL12t9ZkGjnV4=;
	h=To:Subject:From:Date:From;
	b=rStzmhJmg2txOB1M9/yRkSO0/dj2x5xYmRUhg6KW4bTAExSXJUqD2/sys96RbN2dZ
	 hfHhcBaQqPvRbwQG35oQe1db52PbldYXQpz51DSC0KurY0ajZDj38fA7oPGH+E9ol0
	 LZ55EGDOxDlhyQN5sDZIs/dHikIJyR4EDFRlHVQZlI7zFyUJfr50TQJR1BDooSKaMv
	 WZDiJk/CTXB2aOcMLCBXaePYP1uR9hXmRUoKgLHUMdwghVhzkw08u0dURDpSmuPsYC
	 X/JwFQ4j8K0yKQK94IuV0Jn13nyA/rzWxyUFkhoMVot3KXKe2WZVOKkJqyXHDShpLt
	 UqA7+t4wLAtwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515B1C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166869245432.11625.4370174562604520872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba4fa0eb0d8028f8e4a4812e4578df06f12f100151b8c6d284634a9d4a967d9
Date: Thu, 17 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668692454
