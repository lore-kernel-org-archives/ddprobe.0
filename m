Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C40BA34
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 11:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7CCC433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692791048;
	bh=QW9HqSleSXYANUHGaeeuWxKUuWw4f85xLpud0ory2T8=;
	h=To:Subject:From:Date:From;
	b=nBbXy06fXZDfXn5JFXwykX2ek1mgP6tmDVzk0IlU44yv2z9Y81bWtoeeK43N61648
	 BHF/W9h/FNkzel1plZybJjXgq2iyZpkf3ySQI+4drwAlrqUSH8VHDK4CAn12sfUpzA
	 TJQBWux8Zvtm6YRFYRUTrNLYNTL6JXxRp31OpqpgTDpfkUDuZcypIysJfct0yfnCg5
	 blqW42/xnZRs4ul9quSSfOdOtYzV/iGZwtMpGzV7lv/bplQen2vJm4BFXqCf9PIIjT
	 ae1XKkK4WzDVIT/0RUMGrBFXYp+XjxC1wod0FFDq8qRzfiLoMBoNYBZeIcrmSwjvJz
	 OnGivL1cfVKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59BDEE49A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 11:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169279104866.12323.3298652238691171474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8f6acdbe02be24b184d02abca221bca30102bedd8e7a2f65246ecd8016f762
Date: Wed, 23 Aug 2023 11:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692791048
