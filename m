Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E4E7ED
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9678EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672114287;
	bh=MNxya7uS9E15/k2McoeLlG4V1M/xBOEXdve6ZzAeXCE=;
	h=To:Subject:From:Date:From;
	b=CDH65Hf82sXrMly0ruxQ1ZTvcoDeAMsORwk3Oh9WrJ3JblfK3UFWP/Gk6ej1c8WHU
	 ZxSSKSdGsExEgRzVkKZMJhkHqwURi+YliW1NyMseyQ5E79ZR7yrfJeMp84ivigkb8C
	 cU3R9afjn4ORquUNUuCJTFr2GH+dT3vVY8JXd2mQx1W75PoTYgf5A5gLxZnwUnBxzN
	 j5CIQiltOQU6tpefW4SBasWfhZM/Jl5J8idxIxZRMHnT4Is9GnTjP7zICP+Ok4bvA+
	 /pAnSml/AayzfK9/3DfbtuePuAx24wk2otN0i1Lyq3/aXVZh47BEKI9rj9kTFceQme
	 udb24zuh/yUIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74F46C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211428746.20424.13202540920302906232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4382d4a57accb6185cfce6cad2d0ab0f0e7d98b84b5d6196cb7d81af608839e1
Date: Tue, 27 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672114287
