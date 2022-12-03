Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D2023B9
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A54C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670060454;
	bh=jO/Vcqbx3LJjHeS5Vu3vQtp7dMWEHBDfVkZb0DvNk1s=;
	h=To:Subject:From:Date:From;
	b=VEcNugFmel8oFtkWfxYH3OOi+TeFknXXHaiXhiS/sn2igEP2MiSkuLV1fJVK1fffi
	 K6PCdAJtqQFrnXVv6viSmNPor77d+/b3CZb5U+SjB3BhYVNqHToXkMdn2W4BcYQEWp
	 ijbLwB1fYnyCump+Y/GCdu3O0/ZKVqdlZd+93jDN6qHqKvXJ22mxuKD4C2JstQPW7t
	 AOmxY9hsPDOm4M9s2k/hnAAFhekuHiPLRoge55P3SM2FEeVUbLLIq+w+9pOlVDdP1D
	 /SlmF54ZLDRvrXzJFU6c/sPKYIDB7UIvMD258AV+UThMDdwak8AinJFd2DWk5ZHyzU
	 T5QnqoC/wux4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F906C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167006045431.19264.8566408950720957787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b697b98f3eab195dfdfcdfb9e1effc9d0dc50b27a5b1f4689cd7c8905c3a9a4
Date: Sat, 03 Dec 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670060454
