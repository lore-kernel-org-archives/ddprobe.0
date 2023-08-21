Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCFB4C9E
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF04DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692650648;
	bh=yZjCTmtXvaKO6BXoORLgDBCIOqzIQcsu+Wybfb9buQ0=;
	h=To:Subject:From:Date:From;
	b=Bupr/DIHTlS5LMapRORT7k9/h4cYqYED1k/CfbYCDC/HyxjVaRosLtfgm0KvBqssT
	 BJopeQO6zUxl08fUmkOk3m7SwJQsx+ANcYGCh8DeR6RdJk4aFBM8qNtpxWZuy0nAN2
	 fbPujNS0x7WZ1STVji6R3/tWMByKuNGABjRLzwfcmuuDW0iHl2QK7s4qOga6Ems9SN
	 HRBafihb3D+fc92cNwB/vA/f5V/CqCeRnCZWdTvPInTSXsl0xE+KmiEtuvUGvJDSD7
	 ghFN3veXChYO0tpsP2LsEaQxuKCKBYLMbdVsMdTprKXzFDM+nYhDxZkYvpbUDxjOlA
	 dkIkZepw50bgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44CBEE49A6
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 20:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169265064866.18462.9957336354043046188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc55da76dc4ab36db8fd19fc2a4551f0457f02c279d230ab045e72282151f57e
Date: Mon, 21 Aug 2023 20:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692650648
