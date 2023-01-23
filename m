Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4D8821
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 22:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7E1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 22:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674511985;
	bh=wZzupz1l7Hgn6ukyel1ts+j6Knvo3sh8ZequTUwlEkg=;
	h=To:Subject:From:Date:From;
	b=BX6xakIKTu2iFeXHrO3ndX/O0c6x2cp1j0h8qhreGt6f2UCa50IVEWM+uKstsd9ZR
	 QlXQMx9JxLr+xu009coHcBPYgNXKnUaoz5qH6rmJMG6VBSH31bAXA93crlSTy76ovK
	 u1q3WXWeJGg24+eyB3ZdhT+SweermJ6M3HK1fntHmqCFz1Z0QgvmjlN+uLFtL0xEYQ
	 TuxBFePjQnE70JP2weic+PvplpVV1WUE1ZSZVVDtXtx3vr59R09lkjo95eA3Z7zzWf
	 oAxy9Fd7WloF08TebXHRGkz952+anyEBKLX4HfDu6TqRJIez8QIQL1SJ+nyea9rW0T
	 SBN68eNdmq3dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D0BC05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 22:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167451198572.5695.1795159451463412906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fcd74b08f2d5477ab4513a313070f7709544a6b8d7f174fc7984663b857db67
Date: Mon, 23 Jan 2023 22:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674511985
