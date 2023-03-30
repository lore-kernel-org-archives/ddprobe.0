Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409B310E7
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 21:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25D1C433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 21:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680212345;
	bh=R8NV/n39sJQ6Sc6MFzNq85R7ipApeDtZCu8IGqYn6Ik=;
	h=To:Subject:From:Date:From;
	b=rk71/3YCbp8zqmurPtExuskfBYu8iUABXPp/Z9zbbtWYngtTB2qje053x7TqbvLU4
	 UH/qKLncgC4IYx//ARQ13E90Th7lgHBGj0qPnISEhEGtRY3vOaZozcHwvi+hYEK9eq
	 otZa6SAdt6fIAhv68dqty0auvkqHho+u64TnNEr1y7iweQFCJ2PnKGmah4EK5YpMYy
	 e68H9QbGEIG4IzEG75oFN7ip3mQQziJNUy7VisDsz8f7bSlwE7+TgdaCGaKGvYmZAu
	 QuEzj+6c8PJ23HmAbvi7jUrHaD2L32N5c6B2yWQVQBRGvP5xDwx7bAQIjim0vOP8KR
	 6AcasVuFGUcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C463FC7619A
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 21:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168021234579.5199.14889071059405119713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9797c5833cd95f3fba5acda5141aca5f2925bbe84c3dae6a2a826819bdfe10ae
Date: Thu, 30 Mar 2023 21:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680212345
