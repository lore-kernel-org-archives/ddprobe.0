Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0AE647
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF98CC433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688453768;
	bh=fwcQvAWPx7RU2dQBpvZxRFRiUF3ems2+AQZ/s7Ov628=;
	h=To:Subject:From:Date:From;
	b=SVDy0kXTCmz5w9H+UuUGiCE7dL76o71b65mX81kaYcJI0tkKFzauN8l+yjlOc7nvt
	 oE1brW93xdbx2svrn9n19lkTykxTqCG8DPTARxFKj6JFnZIr/2llMfJEBlX3FELdhW
	 IF5UsULs8KUKucoo1MXAZSCpNBM3VL8k/1uvhw8hLbS8e6ZJQ2ziwS1nrKEbYazN3j
	 ffE4f3IXhU0/Exw0iTX5QJ66tK5SSiYa5fVpzQ3t/xyx665G4XpOMMo/M9jJyk1R23
	 oG4VzR+4tsI8VqGW0+Ws/h11obB0gk/C6gU0nYCb/RL6WbbkVYKIaK8pEgUJ06Dp8p
	 Ejcsk9PFQHeKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F32C001B0
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845376867.30502.12789780074483300305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71a679161545604abf68804e8f4d3fd6dcd3ecbee3e5d2c3048a2ddbd7a223e
Date: Tue, 04 Jul 2023 06:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688453768
