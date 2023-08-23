Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EEB15AE
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 02:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7003C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 02:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692757448;
	bh=AQsZz5DHoMQETSpQd8rBPv/JPtRzZPUJkQHFQGutQGQ=;
	h=To:Subject:From:Date:From;
	b=nBbxdhQLGrm9p69jomMAHmRCF9n/DW12vkvfEjsMBGUGKhsFN15NqFWdscnlI1bMC
	 wDRiXdn9Y/h9jgCXp8OnoLWyT1qpaSv7RyRW0bGePtz3kZrGUorQqxpZlToeuwet/f
	 uMZ8p1lt2C+LjqoRI4ygAz1x10pVBBPn1W61GZJmnJQpffaEsDlXhlnKjfDnpWSlS8
	 cZ8Stb282Dd0TibV6IfglTJuOILoBshx+dw3tQQJ5RG7Plc+wBeHXnR9TB8VqBTc+G
	 i67Us1SwRReRthsSk5OUCSeDYtebY3lJ/MLsy03mvcp3iL6DSu9HuITWHiRqyVl9og
	 LxW/GfMLWC8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1851EE49AD
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 02:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169275744871.19445.7390103910432502458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228c9f3b5f07ee24c98b5b4c08d48785df4836f9bc27ba22fbd4192504f5d38f
Date: Wed, 23 Aug 2023 02:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692757448
