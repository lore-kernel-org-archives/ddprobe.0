Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA851F949
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 09:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D051BC4339B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685612705;
	bh=o/SdnhZIJUrXQjr6xNA8Cz+H+TzupByN3EjOWZBuxZ4=;
	h=To:Subject:From:Date:From;
	b=YaoS6okhp5KGbMohgOuOYabJ0cSWTYHLTyt8vlLyKc+23zeu3H1TrLcsxN3SN89xF
	 VBmjxJj/w/xx+vZMkKubc4ysuT4H++i/27A7K2FGSbyqKolSvsiTXtU/2Y/EjjOjH4
	 jqcXnQJI5aSnyoz/aZBjsj5LbSO2SCH8/lMpKH7LsUfecwUAH2BYitCzweU/COIt0+
	 Qv0sNel5aGCmwvzCGXORFUYHHv5teNRb7obcJ4lQ17TemGOdfI9WvnBv4+re0sVxtH
	 pOWvbyXqDqJiPkXPwycA6GwLCwdCS2GHvx6pCd4dVGx106L7dSwk+tF5GnUs5zGohf
	 cqwmAjYTDjs8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79EFC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 09:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168561270574.8642.10822095777832753111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfee4dade80049323954a464291fb4e88d5200c434c06ceda534d3f0e7c15c6c
Date: Thu, 01 Jun 2023 09:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685612705
