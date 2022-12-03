Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC3923B9
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9FDC433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670059854;
	bh=V2yQpxUFVZ4Omk7CEF7FSUTuOof42zGxUb7MXcmVaKQ=;
	h=To:Subject:From:Date:From;
	b=mu7zWxdGYkqGM8tL3+hgYgkHQMen1EI7YWiKOsmxMxnLQ2HSMnGyGLXtd6nN4CfS0
	 WOrYFF9LG7kMF6Ay7fM/SIWvcRk7XCsltYLnGoORuL1hlPu+qiiZyi4ZAtfjUkZdmQ
	 ndBuVyVx62wNWEL+qRMxexeihtcu1tK9iVKYR5MhdBy1qjjdA4Pyw1K2pgZAjm/ta1
	 uyt5QmB7+0Uh3lrzWEQCDjcIX2TW2+v2VAiX1+MH3mHn0jsSY+KYDmRJc8rNMc8rUb
	 ES9fwnyzQkw7JzpdDs5Z/RU9rutBTPe+sTcEpitWEbTvXNZ+rIg2aICr/Lw4CdQo1d
	 NcS+5wx+yewnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B7DC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005985432.20371.13247059592244787252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50179912d5563b822e27ec89d9b338a624ce488db096c2537765ed9d481cac1d
Date: Sat, 03 Dec 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670059854
