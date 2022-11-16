Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4706106
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECF9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668607854;
	bh=tqVMFNCQh6cp1QAbJe7oKh290TZgxDIoHpeTaEsCPlc=;
	h=To:Subject:From:Date:From;
	b=tmGFo1M+iSe1GWAFwwxh++8BcjVAZEfe5Xrq9HB8GUZjh+zkxXx+nmgOZecD2axPr
	 1ONaO/+DTtTH6EiDjaqyP+lKCXoGsscnCOb8QzX94trztmu7yzUOwFr3MDzLO/6FnJ
	 NG1mlUIWcGA9CJpWhCRKWQyKY4yY8AWEp3SNNpdSggCI2qP1+4mc9WEaotpnYz+9Lt
	 FB2wTi7oqg3TlSdU+yB+H+UgNkEAckQ4zOih059ntHSWKFmqcOchXoqDdeu7hjVhd/
	 2kGqVMhXXg0us8J69kBFhh4+2N9W/wlLqGJB+TAu9R7dDX2wGMNfnX+G9+N0x51rQp
	 Niw09XoGlWSwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529C8C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860785433.11543.2846679576496517722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13afdc4972c9799f81f55f1aee0a48243b27550de4feef8969318a99626570bc
Date: Wed, 16 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668607854
