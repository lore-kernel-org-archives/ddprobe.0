Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46291856
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6588BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669113654;
	bh=HNszdI+WU1TlqPnSbpwpYtjM9QXrky9MdnKb+290J+Q=;
	h=To:Subject:From:Date:From;
	b=IsaxyF5eISUeQsVlwO6ZK/lIm9pJYBMikVMHsiUJeMcdxhIqswXOSk7a+C22Uou3U
	 /PwHcaFbli3g7dDA7DtIEE0T3Ml47L2nELvBO8NXWdQa7JvwkfJY+vfngwfk2dCpWz
	 oSfzSpHR8FqnsqdjZWI+CqcUrQpl1fokh2ogFHHeMsyRWZqYPdQy3T53bIRXALcXlj
	 vjwNhfu9JFh04ZhaEbVlxv92oX0UpdbgjG7T1aeQI/GGUlSCdtLd3P7fxVyUFYTbLr
	 HcsrbDNzqzZ0ShyMn8RZWdcArUJdqSXtsvdhD/X06xMy/LpQXZaVbXNWrPPJ0ScfKK
	 2+2uLQScShZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E216C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166911365431.2575.9567510331094380288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a97f81cbad10d412f3ef5de663024d7f5387dc412901258011931f2f04511b
Date: Tue, 22 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669113654
