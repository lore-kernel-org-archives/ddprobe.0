Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C08112B9E
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 21:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C72C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 21:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684531685;
	bh=q/dOZdKclmq8tPEtKBw0coNEEqQ8u2qGg0IYsh5dLak=;
	h=To:Subject:From:Date:From;
	b=OS4N8o6DfSuwSyZxTgpVpm7015odFU6fHyA0N9Vlv4p+TQN+Dj7cYcJfnxeccN9vB
	 WRMSPuKiUdndM1hDu31V6sgt4Q9dMnWDaV2K0rVue6x9egyT2Hp/aLEaZ7DSXeh5hL
	 vs7YhzszdJh4RoN7ni5DiCBIH8ulN+HBvCdx29JxrMF7gmgHBYN+JW68wKM/3FHI8x
	 It3WT2oV0Zp0exag/My1onR9IqfzaolnAXm6RtJFCl6g6W6H06VjDwToR+OU31z/qN
	 fuwnrj5+yH0+iCWocMYOwW7moOO/vx5ZB/hFZHPEkAzVNyqFFwfCsLzYE+tr+4yXPs
	 7mt9Kg/KVjN7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA38DC7EE23
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 21:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168453168581.3502.12504857158804827013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6ab6902e4f73b5395aafe5b7e2acee4b1e6321837562e3df764086f3d6710e
Date: Fri, 19 May 2023 21:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684531685
