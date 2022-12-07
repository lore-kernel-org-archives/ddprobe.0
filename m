Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99F98F51
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76465C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670456454;
	bh=+vqGEnX3u8PCZIiP6CV8NXo3LGM4dwkeYbVSwYs64E4=;
	h=To:Subject:From:Date:From;
	b=mX6+p9KJJ3Nb8gJhGrSqeKs3SQaDCxbY+P9wnBCFO6D625yiWLlZ8oAKYtfYgSDNX
	 MxlVipXF1JD4Y1q03QR8Ss5gYmRSe2X5O/XDwoOT/6fZfHcbMeEe0wGdfSPybTez25
	 gkOvsbKzlGacU2MFMif71DVlmgqsTuBCMdC0efmsze4C+c3OsGBzejpgtqQD6qmz6X
	 MxNmnDrtuNenj8I79rbNGZU2ElPb9QgivTGUKGdzVR1Pp/OXxva08CJftLRn/LEyLz
	 6PPmCDeBFPSsZHysbasx4YMblTQEtbtWXxB4WR5nqd2Fbo1cWfRruoEhJswoLNzhs9
	 JDaZ251CWML8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A275C63703
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167045645436.5429.1642975272101327570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78fa1141d8ea2269a6cfed0b7d14239ee3c409e9966e7e4d7fbee6e9a65a6dc
Date: Wed, 07 Dec 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670456454
