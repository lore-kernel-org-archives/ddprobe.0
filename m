Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC892119
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AB6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661857853;
	bh=Y7xlnTkAbWGBKvY0BZwS7IWN2Govy3v2c78cDRyGQMk=;
	h=To:Subject:From:Date:From;
	b=iwhT9PlyE20S8No8rmByjAvEcaNGi2t8lSoh0I3r1iKJV47u9GRLqSTSfmx1sms3f
	 9C4WB0K+FpykdESMwr2MKQk/WD/XOuPxxr5wRaK7S7qxiverEcebdiZ6gV0AINRODX
	 yckQ9f1bHkQpsNZDfVCCkFVvrdcL7GXs4HmdAyYxFT9TkgQD0wVnGCDA2XtyjDGqwZ
	 JwceFCma/osU+Eg4EOFD1ZeXVGKc7PbbWb8zo2tghwGC5Fwi8a3rYAWx2r8kHXPRvK
	 892DAJRNuOHQSm2lX7SNfMvI07mSd64Et8FZuvBrMiPUFULci/cudsYJpWpgTlJv8Z
	 SXt8TD2QShBcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B13CECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185785336.3120.11832964645750520238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002d69e3215fe38f67c7632b7b1d69e19d9d0512236614d3feee27a998d716e7
Date: Tue, 30 Aug 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661857853
