Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED555CA1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 11:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF054C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688212448;
	bh=gENPO5ce9K/QrbpSdkW+Y8+S8dUpKgYLitrcDiCwYUo=;
	h=To:Subject:From:Date:From;
	b=Gg1AmEuY+ZonUpn5tWi+2DfuyPNdGShzxBKAsLpVF/Or3igfzrJ2tkp4w0Khi2LP+
	 mGsQ7mBMhU3Vaa7dI1SB5WrfyTc440HmsGJlnBZHcQ4f6MuhiD95vQDyKGCIAErGl+
	 rYlxdLV6gCNI+EF3MQw10qgnBbOauzoIfk1Co2apsoiCYzgWIYdHEq06h3M9dAzv0l
	 2M0m5kqJ4xB1yjOtqZyoDf4XvhLDdeG4/53IDgHuvJsjNHJRJ75ksyB+f9yUq6Q7gs
	 aUlAyQucnOFCChVKaWfkqsMcIJuCKTNVXF/aiGCEDM0IlHVkbO8GM272IiiQt6pDu1
	 ZuVQex0xYQQpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB31CEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 11:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168821244873.25529.6092165220341675406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297d01ecbda75d8f83e37cdb3dda8a6cfe11334f8bedd3dccc8320f6572ef2eb
Date: Sat, 01 Jul 2023 11:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688212448
