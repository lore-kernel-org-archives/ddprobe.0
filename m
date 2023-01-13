Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D389E628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882DDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673579487;
	bh=4E09ENqRiX4H1vWu3NwIPgrS576LtJS15/I5Rusann0=;
	h=To:Subject:From:Date:From;
	b=saDbxIWgk0DGkFmQF7FZnSeegrdoTnVihI7sgVHfq5oy3dJFVdXZtDG8CjtwS4ZxH
	 6gtV9Y28Yd7rV9+Io56Qk2NqfK2q7COlxxmHaJcKZ2OUco8kAgZq8rhnkayxuoP674
	 lbZ96JnD4Wpz2SdZZpzXxk8W1YMZIMY4DwaWZmYaMYpYtqIYvxH9Humos7EsRAVnIN
	 3K8PeXiKViUsKTfbkz41vs7HtMaLXpLDfY5Suy3G0ZSVUHOWLcvS7LUhiDHWy9dWn8
	 Ut/yHvlw1V/G0217P/q3eN/SkXHcAkoTYbVMW7IAtt1Espz8BlNNp97dpsT1T6BBw8
	 gyyh4R6+mQ/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE55C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357948743.19518.2893363784916798356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6218b78a5828cb33a6122b25984adc1f3682ed587b93ae96009b837332c8192
Date: Fri, 13 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673579487
