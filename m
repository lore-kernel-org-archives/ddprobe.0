Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346B1A42
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC038C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685410925;
	bh=KyvMEaYXDAfMMwO5E7Sh6zo74I6aaMVeDFqvgnXEN34=;
	h=To:Subject:From:Date:From;
	b=fSyTdScr+zT8Be5Zrn3uIldrImuH35TbKvvUhmqnx/vs1Hku9qwGXihY0M/wHY+G2
	 EZ4uhqCztH7W5dGe/lVAOCct5cbHV0t53sX/Nhg60j6jy4OugGL6U4ptxcvoU3NoZ4
	 GaTr6PABYEXvpGl5xbt9wOHQ4X7RQs2WGZOYls2gWJYbRz9ejTvypov7DXUM+mzJOi
	 m9J8uGWsnKYaJXYDuhbNdpmijJu0ZYz/2b2tL68HgkwJXUf+0aaHxmPbqByzEZrDka
	 x6iqcepfOEafKuoAQFVZDsZIR8haeeUJUgDmtzTP7eeClJApVe/OKJHlXHdN3jdEiv
	 Y97c7qWC+R9Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EB9C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168541092577.11847.14220104576608595661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e38b9fb1c69f31d818b462707e463470071dc088f3391eae41a66e045472675
Date: Tue, 30 May 2023 01:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685410925
