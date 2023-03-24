Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398028F71
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 20:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2084C4339C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 20:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679690465;
	bh=zEbX8X4PUg7yH2CRMyHX9JxNmeoU0MDMKiNsS2CC110=;
	h=To:Subject:From:Date:From;
	b=rzxRbJdh61veJCWIalDUoTDJxJdyQlG/HtqwEca5r2PRM+o55LiLu4z6RKgYaihb0
	 ttUJN161e1SXV5ZqTHUK7dsdf74b8amZCnuZXEisifmIy0rD+2cSAHMq9UkjtmAKch
	 0JBtBNXVAPPcOAdLHsx6sPrfSYmOrFvvO2hHpltqg1ifUxYYUSn3yBF9pbE+iKHn0V
	 o+sZlGe0VRIUZ9nXnzTmrgcZ2s3Kdx2+EYKk+AgFP8tWlAJImPWnImwdIQLbRWz5JV
	 SlgvgqLsSKfNFNsxj1z/Pmibo+6uxTOEhLSLk9GVP5KFLkGmpmtw05ZCJftjeTbBx1
	 rXHHIiojj6xzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25C9C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 20:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167969046578.18219.9916404512581023121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079bbd50a4b32d512e1b6a6fd11401b734d9c4107eebff584d80aa7fc655842d
Date: Fri, 24 Mar 2023 20:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679690465
