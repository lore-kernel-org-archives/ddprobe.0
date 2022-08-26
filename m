Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34371FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F5AC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661480452;
	bh=kV6kVRd7criLHxeXSHFgv0C+rDMrbaiv7725pZD9YeI=;
	h=To:Subject:From:Date:From;
	b=RGtrv6BIej0NWDeUeALrZKZj+lqW2MuqaGVmMcBLaTHbyWfeSPSJpRzeWagSgKvZn
	 y/ePwTVIl3/SFhaY5lPE1ZgXbdkqCXZqwEOjBWhc8bIdr6ywWDd5AUyFmmVUpY+YyK
	 MXYGhIWbw1kNq7sgAHmxjLkEkZ3WJlqhggoi44opJRHoOhPlBP6t9hza958jfqNK6m
	 nOqXmIePThV6yO0VUdQ+pirFgom34gOEI67r3bo0t761fkB7elt8Ek+ki3JzXT7Pkj
	 tYhoqVDAevgfrZ5cCP90vTVNb1BCmjQD+S1JdO97OUHWpldGAAS4bijo3bBGpdUxZZ
	 Q3Mmskgf9jC9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583FEECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148045235.21680.2750396424905616175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d08af00dad16827b21c2a792d2d37c4c378e0874a79893acc613dd6e8fa574d
Date: Fri, 26 Aug 2022 02:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661480452
