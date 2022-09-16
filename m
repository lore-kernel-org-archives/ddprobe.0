Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D1E5C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858CBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663342253;
	bh=ygJidf5YNVn9HDYo7/7MocSP+1RiAXCxB9EDhhlxg0I=;
	h=To:Subject:From:Date:From;
	b=PM5U8gtaYA7JwkypwLFlZz5J8l+VvyEUbg/agjfP4AANnziFrU8iI4p8VaDw8NHyP
	 +RqjpI9usptEZSBeM0dOq9VELDI37iUZc52IWT1ARU6H3QAykG5qhbSQ4fmrpW6rpx
	 Rg2lSLEnnIhBfWCVJr4TJrXUWuUXRhEuxQX8eq0ZEPt/UrXsjk/+HrT6XRMor1q/Hk
	 8VyOahXL4rYtWOzbVXDl7+SI+ktHbVy+dMdMFBOxnoCBNAEkv0x19BMvbnsXBQecII
	 1HUyDJu07czglqR+N4ExnO/WlukiawBoI2SiYJar6iFnRA0nt0hBAmXOqpqSOF7I5T
	 fF5gpg+cLaF/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B12AECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334225336.22610.1627129349767359630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aed28296d591f02c3ff419dba5e64946238f580a3e98ac2c90594e03834651a
Date: Fri, 16 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663342253
