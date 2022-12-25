Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C682D185E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0FDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671976287;
	bh=fEToDo5QoHWtBH7Wa//t2C0J5zABBSz1VImvAH0E1BY=;
	h=To:Subject:From:Date:From;
	b=twGmBu2GAfNEFjnSeR+dMtFK4wTDqxDwDHc1cTfv0a1gzZNbqtEd/zbTdiaZgt2/7
	 oV97R9idlmq1W6HpQ0c1cZ4cbeunajwFKpIZk5R5YNiBrEWDCa+AIgstANZqzzDQ09
	 ISqnrBYyfdkfrhOvvLx5pcdrY0MOpm8konJifUZYigQ8HRxsydhdCjIUdSpfW0vW0i
	 CkF6MwRm9p8OHhMejS3zrC2WySu5+fyQSKuZk/lZ2JBd4AHc/9Mk+NGHYaIy2bfXHc
	 kg+fznSKknWRj/s/+BhKWq+WcqXde94DwA5IFges8p64vivkkI71xKfLdDJiA5uCE/
	 FgwJSai8HBATA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F6EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197628737.5761.7884721318195939926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8894db3a1fa725490637531baabedf77df0a21b6c78cea94df4479b48c2191b
Date: Sun, 25 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671976287
