Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7F07C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EA9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663465853;
	bh=SBSsBrbHvQ+AAx/AbHnWQzlF9NVWf61dqvklSQQI0io=;
	h=To:Subject:From:Date:From;
	b=jVy9KUGg1govOXsfMzCe9GRb6oYjh0wQPI274cfOKCG7ULPChBGK2gCnBt6tYb35o
	 Ed3MIx7AYj73JS1SMpG+gJTDIpgfSNtYCH8t7mycFgIrKhqpdpDQNDoilg1kwKvCz7
	 w7QB63neJJdC2gjuvRHgq1XbcrsxdmGehvu2wb4ppYUT9G+JrZ9z4HYeE/HBuaJJrM
	 M4iGWRgigd20cOG+/7cRy2aylBfACtEgmSjqTVF/bMEjpDkYdidpnLMW+iwJ8SA1Fc
	 ntPOlub3lWAGOgiAjxC6iE2cUkcrEQ1S95faRjREM2vK20G9BiX8erNldOywvfdJHV
	 CITQrBkJGo8ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AB8ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346585332.21080.7347175559475040791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb67e7737bde71134a7a2fc450f4a38f4c68b716da05f8c5992fbd3dd03394b2
Date: Sun, 18 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663465853
