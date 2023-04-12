Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF9D2CA5
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 23:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDEAC433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 23:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681343705;
	bh=IDcMJAdla50EMmRTbRhK4jD/G/3frduQL1fUmdXvi4I=;
	h=To:Subject:From:Date:From;
	b=fYvbUpwbD0ssVf372nUlsCbtdzBFvM6TeeSHRIgNpYcYEGTjBxDW8himhKOYb1VHq
	 zqrdeDe1JKEwDRggdOyNuxEXMXfONpjLE/RjkVPbI3Vg8FzlRGXf+gJlncvCQLzSfW
	 t9tZJYsyAQrCMKDJk0wlF5Dt68/NrOOd0b6lKf2US9zVXBPCUgy6h1K0X/e3HlFziB
	 +bdd7AEButYNH4p7TTCTj3/6Bfv3THs6q/Evz3p5y030JPm44ob5tYon09nUXymKJp
	 rLCNtJFpf7UsYI/41fN7Wd2ZtL6WE3klHp21NDMjw3IFtvZ+MI6S3FemAutkFchmLX
	 0V5ACAaZFW0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2167C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 23:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168134370576.25792.9945614065150001684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5018dcecf7be0dd53d4a454abff9f8013c802e67f740143fccc0f96febfd4a9
Date: Wed, 12 Apr 2023 23:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681343705
