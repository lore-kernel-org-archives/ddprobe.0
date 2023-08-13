Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507329443
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 20:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6C4C433CD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691957588;
	bh=8F0PpQj+Vkfoe+4sDEK8KYy3IeEUtxUyMkxexhYlzoM=;
	h=To:Subject:From:Date:From;
	b=BcoVcnNQebE3f3NpdkGckIG11n2oNFI3Zd8xH/VQd2UTB81KjCHGEA/loxyzc10OW
	 VqQaaE93Si8eYm+hvTs/0ZzfG9FreM38G9AdpACs1RfSWOkf9bfeGjqhCBHSSuL9OW
	 wMe0Qzl8juFbiAiAGDGbIKbM50k+1Oi2eD5KJzRuttjkKRxEzvMJIXaSHhJc+JDQNa
	 3zhjhs3pdjreVt6/ZJgpXSFxJZwjAGbrfu+J6pxmsoZdwQ6S17Q+9dMh7npV+jndhb
	 A6XyXgStoiXTbW5dM07jvvfXXwoC4zIB1YUWinyLm4CqJLgzJ/3XwsqwK73py0mXqz
	 rSkmvCKln77sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE86AC001E0
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169195758870.17287.3619333543365944502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26100920e31d215b8bef2fac0ca1ac1e0a793a8fa455e7461905d9466b527f88
Date: Sun, 13 Aug 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691957588
