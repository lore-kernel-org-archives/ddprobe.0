Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06D61FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2A2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663036853;
	bh=/1Ys/jMUcSeakiTTyojhD5sbrijOkpJ3dUjjI0sNmMA=;
	h=To:Subject:From:Date:From;
	b=jma7yT6i8trXTt1p3jbKsZWuqmKQE0N18TYfwqIEHT7HKQwROepQmkie4+A1djVK2
	 p1xfwNPc9Wm/FFaXNjxUPdGfLHq+08oTzZBKqV1gMF0IAcLc8meUW216igsEePVFoC
	 0W4cXDI6Xkd2L6ADXdB+jI55rtfCclrbaWwMUWoiBg7JDB6wCAvnn/WnklmWzd+kmu
	 U7B8ISehoRL+R2dTOTAsZqNNZe32ySnt27aqnQwBARgPPPHM5z64sb0Nj1a/gMaMXD
	 cfwXSbzX8B/l7EMlQWZiRXHoMDbLis397x5jR0gFzEIbClH5zSYL/EROBeGrKYeh1k
	 vd22msX2lVA5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FC5C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303685333.17481.13966440928432478750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1173281ff018a1be39388d16a53b3107b5562074421875d50225aa4fb5a6d5
Date: Tue, 13 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663036853
