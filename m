Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9A83207
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 903EFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665598253;
	bh=v/RDMO/HAToHvYFl6vbinzpNHWVcBLzKcIsT8CmRN7Q=;
	h=To:Subject:From:Date:From;
	b=Xy0XYREv4vIBxWP9m81+kMWEu5kjzVw5V5Oe1fq05irGP7JnE6hQ8IXh6QZwjX5T9
	 M7pUtDQcXknXcAam897WI9NkOCBDBcroOW2M5dswoOIHf83H1tUG8OY9KN8/MyU1J5
	 WFvL31w3ovdGj6Ic6Qs288IFhs+BzB/sffPvmJ9FcGnneQ7/sZGHko2UsiMV7p7bN8
	 Hd6GBGxXnZb5UBTemC1dtYvbw2KcLCY2gvugEbfa56NZ/46eNrMzVNNuqwiXWzP/aB
	 sfbthTHe4nxxMuCoaTC3MjoDgzyyN/GnTLPQZosIPSWaF/Hd2px5onOqheXfqkK7AR
	 7ARhqxTDyEtcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E81AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559825341.13046.8064328324269640970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f24f3cb1b902e8f0a9d910302daf41a1707fa34c4dfe8b814fd209437425b4
Date: Wed, 12 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665598253
