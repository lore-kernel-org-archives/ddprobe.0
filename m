Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9BA7E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864B9C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671626487;
	bh=oxA50MOR9UOTQ46rrA9wjqokwHwiq9yKMKQO8hpR67s=;
	h=To:Subject:From:Date:From;
	b=E4kqx8OkOQsfVR5pIZejMV3KWKN6NiLwyKU6MhES03t+OoDVm72M/AId1TZNjmzJN
	 jOevd0M2qpYAvLnvZOK4guGE24vGJX9YIpcUB6PpKfFToCRze/vmKRqVf0zlBAZa/A
	 lWS8qX2o3vZuvTokVHQEecmdr8pxO5RJ59Dof3CHalVWhRFgxFOME/PRJzsr72z+B9
	 kUC6OKUomIX1W9lwRC1Gj7qIzD7NndMK0s6tu5rfMu6w1KWH/RI94Pms5NM0gZ9061
	 XRE1Qt9Ya27gwtjmqZ2jNfNc9JIUBAhOrl0NVfnEqryneBG79s+mooq6QKNS+nm74a
	 WZ/tMZruvgsYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BE3C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162648740.18717.11921913562839760854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c32e4dfaa753fb41e88e98c64569dd5af135e0b980f40901a7299069d9cd1d
Date: Wed, 21 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671626487
