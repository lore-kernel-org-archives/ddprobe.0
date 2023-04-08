Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BFDEDE
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 00:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6371C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 00:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680913865;
	bh=Ip/eAvBFuG6zl5ZRy9VY6C8hRMVC6dCVcw5u49ttdBA=;
	h=To:Subject:From:Date:From;
	b=bJXF8qr97GYvoqQsaakqfulUDbyV9o2evRPceUA3IrA4ghyiIzxYPXouWKiqwnb7u
	 8XalofKeCHvy3Sy6VKpsfwEWpTeDsXKSv+c7XY3hGffFlwb0QdZFT7+b26yrBK1U3y
	 ePOtBWoSPE+mcgOeKj63nkM0FOBxNcVTmO5Ghrht3kfLHbCa1EcEvb/Nmo+jGuZrpc
	 3rX88/EIvzapy16EYIeWyzGsDzHrcb1zWhigkMOyWkFoS/bVMiTIfaXPm4PpVSe4eD
	 S5E982sC12t2txQY0bP/Ye5mI+hAbYsFWT7xpLQSjdeOT6G4JZq/TpT0U3dlAs1Kxl
	 n/L4NLbC8GqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C71C76196
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 00:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168091386574.8022.12753242779650706992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bf3ebe9dcf0e5900ac8fea8d619ef753dfdc825f7f84357e891f0aedf86b6a
Date: Sat, 08 Apr 2023 00:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680913865
