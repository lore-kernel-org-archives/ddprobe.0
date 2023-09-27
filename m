Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABAE1079A
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 23:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E816AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 23:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695858368;
	bh=iPb8J4FO+aJLU7G0fVmq3FaiudP2logvOsqwT3xHass=;
	h=To:Subject:From:Date:From;
	b=W8p5BpUna8SUqwvEoZmxK0JwAgma6i2JxythdIVzEELpK3sxusAjhHnfuLpIoz6gt
	 sc6WQtwfrvG1rhmNpjmhAY4P4Wd0WkaIjU16KW9UJpQiduHzWwy7pdjoUuzurJPvNJ
	 oPmgWyUqdAPM7nPPz+vYo6kcBMiQaL1YgEaxX1fkj6PUxhsLrAE4lMy7UnPZxhB2tF
	 voqAYMxwaGB/4u74kLyycPZeaE99tTu8kIN8EpUVxdscC3/mtBRNy0MobjeDib8YCU
	 msD8kDKFpfSRmNOp8YSGLyIBUKC+nnTnP2suC4uDeRhOpNYvjmB2GW86/TbFD4YHeC
	 BIP3cwBVgHj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88E6E7F14F
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 23:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169585836879.27464.8723373949947646875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716dd6c30076c033677008e47592d24db03488e5ade64efa91f00cbaac02eec3
Date: Wed, 27 Sep 2023 23:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695858368
