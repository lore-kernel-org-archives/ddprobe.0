Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E165393
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 02:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2CAF4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 02:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693016049;
	bh=HuV7LObQtj6Z6JhpKc+E16WFPb9QDAYeOTYZg07GAfE=;
	h=To:Subject:From:Date:From;
	b=j0NHJu8NPVGX14XBPVMwa68APUw1l4GLcMIOnp7qRgFNT/jYGVOU+iV9sWqXEIKzw
	 t9wf4jD57PzyYlsZPBkrgp7v4V38YpUepxxfYX6Q3Kv2bnQgoo7ya4lkaMPCMpI4Fa
	 bHOscdKaoSSprJYP9N4S/UaLY1uzrM4Wdi5OSBy5tHnUp/iZVXY+hEbFT5faBAjaWt
	 g+cr8PPn7F+6KxGscboHhQSRcgiWDU34tfVNqFdF2j/UK3OPKjrW17bMpv6MpTcDnu
	 1v/hxMU7z+Juy5QhZ9rTi+0+/Mo7nfO32If62D/cWwvRfLl5YDutM1rWZjIi4eREKx
	 Viw5Y9G3JxGSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0212C83F0C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 02:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169301604868.21299.18203892617938069620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711f84422a52e660b39ecda43e4e7ff0fb002f39ae521271be56fb6448b713d4
Date: Sat, 26 Aug 2023 02:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693016048
