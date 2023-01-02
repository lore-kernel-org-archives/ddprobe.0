Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A2F20EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42F8C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672645887;
	bh=DnjvRHpHlT79ychK6l85uqM38riwLmai29XpkZB5MFI=;
	h=To:Subject:From:Date:From;
	b=VGD96W7DUgsxuMhYmHUGgktKRzr/JHAifdwnOBXyOXL1ZYrYWd1lokCzN8/Xjdmgw
	 Lrb6pZpfUJ5D8/OEdxIkiC5IT+ig1yA6t95YTATkPXo5s8P4aWEJIog4dRTWfMgdnG
	 9VYY4BRvq3uZlnNw9jr9W4IAisQCL9bY+ekgwens0do+1DSdsadhySexwKPbvYTxc5
	 PVk8vfsF9vw1L+el8aVTbW51mneuV/J1WKtxfCYQu8N/pM+NuLSDsY7bP4Op/NmrEf
	 4XsCiOykIKJX4d/lRzgN7tFfY3wJLS2MNdiNQ9lTiCmihczojAHwSj7mYkLS5qsEQT
	 fd580QpABAQGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CE66C4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264588746.2447.6142282982269726075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38998640deb9d8e8a0afe142e53f309250034bc5b2c0f58c54cf4535f31efcd3
Date: Mon, 02 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672645887
