Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECCB944E
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 21:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3404C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 21:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682027825;
	bh=1tKR2XuOMV+fileiC8HtW5pk3JW4READZkP1Z/VICZw=;
	h=To:Subject:From:Date:From;
	b=CCyvTurdyCQej+cBqNhWY+MTa4CPZVl91PIqSHj/qm82eVAb5zDkHznOm6031Y/aB
	 cDsoagmyJAHsvQq+gI643GS7BFp5zsM+DQqn9G0gY7AAWJgd6PnvBCUE+yYCd180zd
	 tdcu3M8HdfIQ6S8FGYKIVjImVl1QT8FizMpXIM2zRmPPata/EzoimCHuzF5y5sjBnM
	 CeeofgsmY4V1rl8hNv2GSHKqAgh61zEEny83iIxlcPeet5G+BoDeOlXH9IU1NVVWWn
	 WVVgBd3/x5PP1xbR1e2xfyfmkAsfosJprDi9W5j/AwdHQwMaY03I+Q0qNi3crSRTM5
	 GIJa/V4ZA0XYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E4EC7618E
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 21:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168202782580.23547.15375952238832885757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1913498a73bf13af7f23e502e90432cadb90182736a4404c17e16b4fc432f0e0
Date: Thu, 20 Apr 2023 21:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682027825
