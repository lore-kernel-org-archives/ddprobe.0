Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF106A45
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E302C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663576853;
	bh=JLMZgAHSSI/u94xOp/+43/tz+ZhDQoCiXB1AxjIJNAc=;
	h=To:Subject:From:Date:From;
	b=cLc/MKVzIhUhyhRW8pSUYlJitbxHNLjSJNnn3a2jBvHXD+FoVEtFoAxgl3VzB5a2w
	 J387MLoXuuvbS8InsTgOeCzEBCA1vgAIaBDAmXeJd2PNrRCXI704SCA9yEHsETuzCP
	 m4dkC8FzvcDnTrmaJ1Ml6gnweY8MnNVPI9mGilfeN/dTQd/+BX0ajvL+GBfWB4OadG
	 w6qBqjIug9mPKUsOO62ZdmksJ6z/5ZrKda0FW9+XOMmKikXX8FAu7KduTT18xHTEhc
	 JIhq24WO1+tR5EkZsYvZGTm9r7ns0XYU6k0ZtjzgdH/gJQFix8KNgD7pUdfRaPP7P9
	 /xnDP/bwQM1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657A3ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166357685340.23415.294820502828220161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7555c11ec748c48c9cb07b6bff581887b2c42a1c12bef7be0003392eed173a
Date: Mon, 19 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663576853
