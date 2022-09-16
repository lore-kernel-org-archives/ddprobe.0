Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A03210D
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7090EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663306853;
	bh=TXjVqqQdgsWyJSrZ8Mc4KhKETz6If+UL081jFER8+D0=;
	h=To:Subject:From:Date:From;
	b=EtgauyUMdcEWbFqdTzd/jvhYD47fCxakW4cWP2ZuT9eLnCB8H4ZDV3TDi8nwsLRiD
	 iJ/ghNmOCRnU0/lOzxXPw9Uqra7w7bBwnriF+Ekb9l06BiqUkSLqc+/ves0HUHSGuf
	 ZlnkmmKILi9q8LBOJGcpZBog9mzTJ30db7m0bd7ASBAmZDXBFLktx2g2r1wt3is7A1
	 v/gCUuZ/GjJnYq+h//dHJnmcXYS32LnnOFvVHCAAjgaSG6YUopIo6nyfQK008cZCLz
	 BddOfhYBHwWlaq3W8LjjRJN8n+PFM8EgvvLE7gCth4aJSmhxW4L/+Pw1p6GpssSuTB
	 1xCe8oHqY0k/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55354C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166330685333.12317.9738206790126165018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe1a3d972b5f746c51cf45c93cb14aae080434538920c73387ca6631b880422
Date: Fri, 16 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663306853
