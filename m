Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4DB6FC0
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68613C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666725053;
	bh=/DChThGhIsSZRBhSn9RFSxpxADRTPJEdjXnz5MNUokU=;
	h=To:Subject:From:Date:From;
	b=GNqFKVCFvZ5uYB9CRAmwBMiCM7502YBrahLGgRk7PD0OJIOVHHI69YvE2K+pE9etC
	 H4WZXT1h/yyQviQqdWQkbb6NI33P5C/t3YhwPjlSfGYPFlA7xAPoZ4Jkb/AfKv6pUv
	 uuuncMWW3W4vqbfRkacRrR8eTBTPaL48qV5VvS9XvgQNYliJpibfy6+10zKex8Br0P
	 MguKXPVgf2ZWmMrIMvzv8J9bnFZObhcVjEu4tz6s8A3gFJE1PHoeGDpZzY+La+hSvQ
	 I7I0oMFL0IvJ3tPtzXlT046c75WyTHOnlB1+grJgiYZ1OOSLdWCXJkTnuMn3nX6t+I
	 MsUdJjZGh7cBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52127FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672505332.8058.13410431638049987182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23da6c87b5966dd757c3b7a6b57b44da57e78c28d3a2fce6d17e49f63d253651
Date: Tue, 25 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666725053
