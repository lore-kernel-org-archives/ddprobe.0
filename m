Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D695D371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804E4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671169287;
	bh=qQx0+3hv1SncdyXnWfL3VpqhpD6MAshDL/k8vc72IC8=;
	h=To:Subject:From:Date:From;
	b=hHbY/OkHbqV3BB5TsQv6Tt39N2Msh35C+t8DSVJkfyUH0BXTHx492cL60CyZHcdkD
	 00zUHGwPj1qAirkdAt2WPzxkrqohKUWU7dxpAGAbRLTKbV36ZFCJTSTu9jB4EE+oj3
	 snqiz1+c66G9sHUmYWvANZOZ1SguvB9QtbW+IN9yIzvuqgHduw5bXzVQpfy391u6RT
	 0xyminUsykj2nbGBg/nah8gP8S6Y4yucRg8YVGDhUl/8tTJJQDOkrLYoOf/8gm4Cwn
	 6gCqobbst/71BLNQf2Kfn4D39Hkci9NCH+6+STezhjY+V4hHF78v51PwTIUifFyo3R
	 qqP1O1Kc1bbJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64018C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116928740.17633.5587425251746549024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28b978aea7d481052a4146658831f45c1032b4fb31905ba30fddffd66e2533c
Date: Fri, 16 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671169287
