Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1C020F80
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 16:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC01C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 16:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689181148;
	bh=xINlbwOyQ8pcH1YZ51lSxmui2lJre1kavgq9/faqFpU=;
	h=To:Subject:From:Date:From;
	b=ubBrPOxxa3vNCXKkn9Koy9iwo2YsEsXnXWhUPZhn6hGsouAON+s97rqcttp91Ka1W
	 wBPO0z0CNohESB4NKh0RuiRxE5DFv0omVe4FvgbxOpBSdAvwDoEgl9PKAGS5mC643X
	 evAD7XeWWIsJ49C+knVwSWLmmXaj0ztF7Vwb6FexTKJIiN4vKV/6L2XKs9ZVnVsCdh
	 A77wMWdOSEdwHGjW65CtYvbfroQmnEtwW4QJvydTU9knLqj718YCnnJ0wCl3mwaZIF
	 /mECgMnnnKig+qtHOHwK7JDZrMGsgPu8BT6uowWdE6TFoUGamrWMcQ6OkYeJ8/Cc+U
	 TiQB9JGaUmKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC050EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 16:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168918114875.27542.7359029106962352236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54ebf48ccb8be8c4f848bfe8780d295cb62523cfeeafcddedba86dd2aba9f90
Date: Wed, 12 Jul 2023 16:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689181148
