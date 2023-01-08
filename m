Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F031859
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88173C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673214087;
	bh=IB0XeGFvhGNY97slViZcPuhV/Gka8cjW+MXoBRu5OH4=;
	h=To:Subject:From:Date:From;
	b=Gyj6bPTvc0s8FJSRtzHyEgfkJOImrrZiAYtQwWuUQvGcldXbqlbaWF7Obdx5bzloc
	 RtVEUlDj/IdeazfqP+4/aaXCuxJHOTZth9C15puAjHUZQRUlv2O/ws8QCQ8DSAA3Vg
	 TwTcXfXJSu5opfBJlOfWzSQpVY7Qr5fCaaBVurf9Xb0X76vP7tS9v+oWOqGKHN6bHc
	 dumAzSgruux28YWf+hGjVzQcrtDxdE8ZxEcKZT+Hw/bjfMSfw+sJFSdWzUbFWeiON8
	 4bNSKbcKMH4o9/yGds5V1EcMy2nOZXQUyXDxK6FeA0ABhzht1Y623fa4i023BHWRjq
	 uDurlJiZWXeIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B573C54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167321408743.21771.644277360733184998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1a21e24388a2c276a7e8dd42046df80031d1f003cd4ac4601812c9317f3c7a
Date: Sun, 08 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673214087
