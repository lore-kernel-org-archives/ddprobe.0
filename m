Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887BEC121
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 21:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E900AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688852828;
	bh=0mK0j0L6m4nPRr6CkJx7Jv2rcS3D3rzzbEFv/cMW7OI=;
	h=To:Subject:From:Date:From;
	b=fihfjAWzheoBxxHdOxrTdRylxDlf/lNJ3mqgQD/Tu7w16ZG4nmDb7E5FuhLCRY9Pb
	 WPA4XwDWhPzKXIx7hmp/b0dF72KQB+eoCaKs5jqaAp/qCWhmsExiug1BsZGf+bVQsp
	 J5uZtI9g8mKh2bW1sRNj3dtHTOQc3gpYmeQw918T7eYL+AjR83veaPVNehKqu3R5ax
	 1sN8iUhx1KY4Y11Q3Sjd5C8dWY9muXUssefPf2hiBcm+omMemp9PVT48mLt5oJgi4m
	 nesE2aWXdmBKPikkU8KpfuavonOQu0TNG8+bC5qrK30KbgxJ6OlwjAY2+wH/QuKwNN
	 mHl9yDVmX8lvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F32EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168885282878.1404.9164552683756365262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bed15371683b5b23de2e3ab6af36fbc72877078c65651ff9193b4d19349fed5
Date: Sat, 08 Jul 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688852828
