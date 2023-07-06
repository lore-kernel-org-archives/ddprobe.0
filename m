Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF9E1306C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8713C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688635028;
	bh=ShChE5GdZND1GCYPQseSH3tD7vOaFLVmxfv6mim2/fQ=;
	h=To:Subject:From:Date:From;
	b=ksRp/ufldUu9Jen5mnHAzm6azCUSH6K0lcCjgPnl8x6qOf7pcw3HprppTmYB0TMcR
	 V8VMA33WddVyefOUUl1YJMC5xs85BY09+U+DEy3FCKtSdm5LfvXEvQMH24OIUsMetW
	 t7+qgYZLCNhk2jQp6N2I/TsXrjOfuuLXK6AU/+HfKjDbILqETatXLs35V1+sUgeFoi
	 a31kNMY5MQjiLSG96RfXFeJ38C9kSDt6XsoPvIsOAqCUWAfHC1PyQb73LRb+EFLmSo
	 ydKc1a1xZ9OCp6chSloDUnQ0dT5X54CZEwg+V6edNcQFZZFf8bjPn7ZNXtx3FtiZ0C
	 +u+xdv7WfjfgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E74EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168863502878.24549.9568659982320317816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c93a3a28e966974c2284185777dd2438eb4f3cf6bce51178c66ad470e494b2b
Date: Thu, 06 Jul 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688635028
