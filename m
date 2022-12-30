Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCCC28F7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFF7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672418487;
	bh=GBGCSoVoH6BzwB/07LfpNs9uDXm31G1NSVpB5iUOAVc=;
	h=To:Subject:From:Date:From;
	b=sogDxBa/ythyGT1xx2kfrwOfZnawR2PUp8pbpnvWtgjlk4SD/iZ8JJ/ok6mZitxw5
	 Ni4YIW1iFq3gubB8+mBnMSwZDknGDioXXIDCmsDSWZdQTttTmMFe72pRnX8DtMuvs+
	 z+gpI8Pr+EXiz0sFyn6XybPdy3LvV+fpEibdeiqOqo8rcmU+Kqt2YjQO/xG+J/zf9+
	 PJEInTiwjoLbryNKTTuJ3N1NSY1iLlmTTKuqL86WlpwRRaZhV0uNVk8d60FAZiXWUE
	 +XlqHAoFLA8SMEGDyduGwLL50W873ueUdZBPT5LTy7jq/S6GOCrVq+pgNMSBkLoFXn
	 asIWwdkleksrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBFEC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241848738.19498.9894607790399834816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc97577b3c96243f3e531a43d52da7ba50627ce09c5ffa7749f4cc7517c35c17
Date: Fri, 30 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672418487
