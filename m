Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A971306E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ED7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687893188;
	bh=t9XxAla+Jqpz3OxctIaDVNx76UTxzbLxAHdPUiPT15A=;
	h=To:Subject:From:Date:From;
	b=bOL2+SlGzsAQrGrp+wGJJfTrz39o37hn90LjfMBQbKsEkJfuGg8Lh1qOntvMwcAtw
	 1fTzhU1ayZ9FE5yfTj8CMOrfGzuWrWZ9xm+c2FwtZtcGGiBImoSgkSDCGoICE7QZdJ
	 JU5t6f1w3Vp+N5XHV6IsbVSKx2lrrPafI1QEpBitA4Aa0X/QZ9PinhX+2UArEQrpaC
	 UwIplmrZwkKiyKN/35yWM4Vtngbo36J2xQ+IKNjxahC6GKoPXD2gchyWnAx9fzW09b
	 7lhuQj3R6CVYrKGRxTWcxVE1QyM+0saKYO9j2lmeYydZ/TbhdPxX63ZFn+eHkyy2by
	 lqVk+32eI7r/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7F8EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789318869.32656.16758910411640820107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15cf89aa3cb51f36cffbefb80de5aeaade99ad77c6f34d91c54824609d8b05e5
Date: Tue, 27 Jun 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687893188
