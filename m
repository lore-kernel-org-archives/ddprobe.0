Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA261FDA
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 18:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6833C433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690741928;
	bh=yValhFYOHIJM2OZX86Lt/nGu1X8OskTZaSkZS+JXJRE=;
	h=To:Subject:From:Date:From;
	b=p6NIhEbYJIBzPjElanJx8gjxRJ9u9bjSUnb5p98v7kA4S7q1r7Rk2IzwhcU1Y+Cvz
	 dV14LWWrK635oStbhxo7QEvilKUOYZ1WeG0LvnFlorpuXAHt7zfjjyxxXrXCB9hadI
	 s4GpaMvDs4SP5MdatbE6JKxC1Y3ZPf7eUcRn5emt4wcaMRfjIeECltCmP9dxRzUmbX
	 +88FcuzUnPynHLZW2RzK4NCZRhbgLn5nqizh/ZSl/zSrI98Xe0N1hi58YlO6nCHaI6
	 6cZjWuLNQHb7bKZ1v9m4D8JxEMBCTeJ1bW8cVwTCCEu69HWGU95htmWMQN7OxyMCUq
	 LTfwCufmTBf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C2BC001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 18:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169074192866.21304.9091293916516085322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949ddfd210fb62fb5d3dcc54f54634d31c4f52f3da486d8e0e6d12bbf8200f17
Date: Sun, 30 Jul 2023 18:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690741928
