Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D35FEC4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 03:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB07DC4339B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 03:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677726965;
	bh=A3ESEHNQjq7iYTji1MMJr0K5P2SsjPMj7kppRoVBdOo=;
	h=To:Subject:From:Date:From;
	b=JN3f63n2xneV4YbsyGSYuKFk/TfUF25oVG/ggf7Qca8v4ZoTi8/MWpOgVwrz0sRkN
	 xTM4LfTdj6UuDo3StMMTjemXWjf9HF45Dp1/Z37Vx5RF3zWYgZ8pzW8EwDlZ29h6Rj
	 rEBJPDnuJkdmYT0JQSMPfyztNTJIEVDe/bfRMoSSnUgL8/bxZIXrAIuXp9fGeh6USk
	 FYoA54USRTjgYAtEL1Q8MdwDcJvxw6eHqRVoUmSWs2cyN2t6myfDtgQTLqsFKwA7h1
	 JnQQTcbK1aVEx4SkMeJhWj82CjPiemr8Q2/Phh9n1GSguqWCqCvWhD8U3naDInlTFf
	 3qWTz6WWbke5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF70CC7EE2F
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 03:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167772696577.27882.3926896630694608337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a54169ca6aa85e16b98919041a6a8e87c59757fb4df50ee204b450acbb51e16
Date: Thu, 02 Mar 2023 03:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677726965
