Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB5C10EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65FFCC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666831854;
	bh=KoctC6Wr1eJkv/Rs5ZCCaYcctY3hXqIh1HRSDYzKSx4=;
	h=To:Subject:From:Date:From;
	b=SuRsDnZFU8KrLUumvAB9CTpl3L1BJisj1fqOOLhJJzmbTKhpstej1eE/jwIxSY/i9
	 s4ZtfvjjP/f12+y83jhVQBE7jAK+0zCls/jRN54yNMbFeSuPLpd+ef2AhPUHvML+Oq
	 LxCV7fQ4MmVbhWPz9TVBU4GGH2Irkk6sPKJNIDEAKvP+8vvbiOcrAYl91ZXlEh0KyV
	 x6cj3Yu10S/ILZ5+NkzDOOFmMrK4LPQaH7kA8ACJz6l8TgjVjv/EssEU7UeXRaKMyA
	 wjle7X+QG7TbNGB3KKCaIPoT7bAfJekS/u9Mc47BdZfnLZBCsaSJjVS+AkN16Z7ISu
	 PmpN6YlNKsTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506F5C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683185432.31989.9721000897802962293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb26ea1da6c4c7f13c042b470543569262462ae72eb56147a430a69ba059339
Date: Thu, 27 Oct 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666831854
