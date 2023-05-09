Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C548BE3
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1F1C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683642065;
	bh=iW1Rws1jM4FFt4AuegeOFMwMU5wvI24IMnRnm/SCNzo=;
	h=To:Subject:From:Date:From;
	b=OKts8sg42uFcPOpebniLHv3pCMPCa8HeBZGXZeJtiZwK+hcpIxYEa7qW6iUo0mGcc
	 NiVpLGw62fPfz6P+HN9ny7KgAJYH6CtSOxd4/iLb+paPvpji1ux3Jz1LtCJZwybTYu
	 JZbWlBCmtAqfB46hK9STKycK1bJhbzejrK8pESBhDVzHJNCrPSxVl2pPpX6khbWODO
	 WnIIsMW8kke3xfFkKKHG4eVomo1desStDpmDSeozFJyDepyazTdPAa3TIPxeDdaLNl
	 Zs2ri3ne+AaCAo0NjtApT61DF6N8UIUSJaBhBail7HbsVQPWb1YvQWbi8Oki9+vwmK
	 tuF1XOj272/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCB2C77B75
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 14:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168364206574.29875.1495631181754574777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa8feaa5f163e9fa3b3cd0ce5de9156319f6e7cbbca355f332e2ffdea48c365
Date: Tue, 09 May 2023 14:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683642065
