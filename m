Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2D24405
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F4EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665685253;
	bh=vueDVBlQEB+lDikclq1LCu0b2kvgEx2j1wZoM1hkbp8=;
	h=To:Subject:From:Date:From;
	b=eVSVIhQyQsJliXFhD7/f00zuTrtCJYgixZsSd9Drm9xMKC/Ef6vNMem8QUF4kuDYj
	 7VR5toaebUhfwq1Q7+OB8Q+BRLauqA6OV6/EcgxeshCMLfOevBkkGOx1cV5jYxIAbM
	 33q6Qw6OLu/x9xj9cKCVLfw29u/H0Ofd+bxCnX1PWXIrrO3wEJV6qd/qn+5f9DVt4Z
	 2NaBLmV4EnECwM9JdfC5SeTaN2uHbk5AEbhvLt1anDYkewEaNeJ29cJUgPzVk/wC8y
	 PC05pLqhiZCCOwiIQl56g/43Hc4V9Qic/F5dbGMqT/jYPqjrBZoU6R5I5nnhUaBxUZ
	 o2GcNHtM+LrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645E6C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568525338.5353.14779231834634235125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0727f371e158b88b679638b67fa798eedec55d75fc52d6b93f781302331f8ce8
Date: Thu, 13 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665685253
