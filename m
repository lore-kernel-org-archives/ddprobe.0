Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24851115
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782B4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663691453;
	bh=cHkGQKFHzUbZFQAyOK8plrCHCi8ilgXlIeNZhitQzvc=;
	h=To:Subject:From:Date:From;
	b=fugB5MJ38dV84xjlDTjptwYJVIagMoibFzIBoPwNMrHKYuwnMnmSeFWhdVuapzD15
	 eZJdklFf8C9S66Fc6ieS9caDje01ocNyURJs9hTnUgu+xNEQWHHRTlZiVE2de972x0
	 1IWQnOENwAvm/Emnc9x6w6+GvmDEu4d+B+PShxx9qK1aB+nY9lt5gL8e4PbDUKeTMf
	 NYb6CXmXJ7cetp5M4u8kfL3ZLx7pE/Rvk6Ce8NAREBARpWB3XtU2qectKGclsBkvjI
	 +ju7zZ3mIhHaHV3sbba9yKS7DwcZAmcxkd9rUygi/uKawLdHbo6aB5W3i9ZyvOEYXj
	 HRxCUmtmNxnBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADA5C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369145334.2747.16550039560523237877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ecc495ba4fb7100b87e2584c350ebdb83d9193f4a1731ecb4d9e462d833f35
Date: Tue, 20 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663691453
