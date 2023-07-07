Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5762F28
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D957DC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688771828;
	bh=cb4fxkv9c5pUITpD+uipaQZKUVTEI2ip+jx7gSa+D2g=;
	h=To:Subject:From:Date:From;
	b=cgL5ZVfvcahWJpQxz5I2DWZkhIKNk2dUjN50OcFvhqteIYXr+bRPVOkTtYfUDbsT9
	 h3I+vWNd8M6E3LfXaIDQP5LzC2i6WZI1ExB8ver26O1njIP+Baad4K5yQu/cfeXGnT
	 zLUJet1jGozUnXA9J4mV+HshiFDAq9fZCnozaur5iBEiWFCBEBzt0t1hy0EPYG0Alv
	 J9mEsmgMOag6dTq6EENvcCQyQ5WfCPZ0yTD1ub7GK5oOpvBnmvz1wEj5Jy3WyTdA9+
	 VA0Is8FPWYb+WeIAmtjgLBSHe/2LAQk4Wo/qS+aMxcULoWx46VsEBhMpYCTB/YAPav
	 7PazIATL4HE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AC6EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877182867.28134.18076051198016967935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d75983ef36dfa812c919a945df870050b5bf9c60477c936b769d8ff9297762
Date: Fri, 07 Jul 2023 23:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688771828
