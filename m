Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849ED620
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E317DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689309668;
	bh=+q7gwhWDe+EALNUij1FireK/iHyuVcQMfrkn2ldUx+k=;
	h=To:Subject:From:Date:From;
	b=XqWQR18lrfwYdd0h+pPdHQexXKcFZxo6JBMzzm8WkwQTO1XhVMJgNlgg/fUpf62FM
	 k3+JAD1tY2mONIWS3XC7JCDILaZ/6aCFyx3NdwkbrJKuX6FtOpsreuXEE8d60EdwCL
	 vqLbAQUa4UwgWNrXXy5D7Js9L0tIwXqtZ93MzHK5WjxAAQ1sAnpYqWqFwme2BkOvbK
	 iv/ckie6GENaQvQ6WGofKCO0B3k9L6F/kH/MxXTrO9nNxUdULSxrcBOR8Vbw/Fvbst
	 PbUKr8XxoAvtlEf63khebT2oB3jlLNJAHAeBfXDu5ccSaCIjbJfEhQBIf30/OUlZ6M
	 941hjBpPDAMCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C10EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168930966880.20228.15893128392094952581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd58de793377011090f52419c3efb75a155e72b6e6b097a28ec62f071c152cb5
Date: Fri, 14 Jul 2023 04:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689309668
