Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA61B100A0
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 14:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24B4C433CB
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 14:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688395568;
	bh=DFhNbwn8gL45CMajtVxcP5m7K41QiJw+bIjZtCTkFnM=;
	h=To:Subject:From:Date:From;
	b=fF5fIClbrF3vufl7lCOGW3f91TRa8mQhrSe8M3DxsqDDwPrKPqc7D6fXtwTkV7qZM
	 0nRJb3YrlMVBuW6V5wPsosrXRsKgAfxM38ISroQkoHV3mk6JhtarmuaKBo4e0FlEm9
	 OsMbYP5ls8A2RZMPZwVT0h+xVn+RkqDKIqmb8vhq4t/rFZcRT9auTUAMk1aecqjcP7
	 TeJZlH1ov6jlwWwwERZBlxA/jUBSRsd+MZ/FzoGI1h7RAew/VfACILsKMnn7NibOBO
	 A79b2QXhBG0//v/3tD8ULEazajEUe+upUeOIE6eUp0beJykLIM+V8ohUpba2Fe6qb3
	 Zh0jevJRsvKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9133EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 14:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168839556868.3193.14912534051419372836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091696e1d70f08021ca980a7642397cbde3a5caa90e8b54858b80e1fe2c9b97e
Date: Mon, 03 Jul 2023 14:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688395568
