Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6530372
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF6FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668126654;
	bh=Hq+VYCxmL3tLdikj8g7PFuq7bNscOrVJjDHZupfVtD0=;
	h=To:Subject:From:Date:From;
	b=dRHx6H7jJ0A/2IHjMjMOj5pWMWQNFeLDV1ygOyoX70/P8JycAzG8KEUDneeIH+PsF
	 5MAuaXOagUg82EiMc5i+HTk3Hiwc7MzO6oQEKM9cxdzGQyF8m1HdNVUcH3nbo+aYMI
	 mgmXsFcKaxPWGqcJqL/sAR2/Sl9uKKXaGB8aiFeHB+heMOiXmt6gjjCYX1OUpS7Z9J
	 CY2BVfLHB3o6+eg/V/cpS4cbQCi1A95ZjpAVGEnhlJfTSGd7WX6VV+MMjVnchF4OMx
	 e+tsfWEUtN1W0ib6AKTz0zLoaoUbICjQIUEfXcfmJUXvsqYQpE3svVt3DSQa8/KzRJ
	 A8aYa/Mb43/Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B70C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812665433.27507.8075783531848981971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df739c53416e52881f3b7da6ed6151e726e175b77805aed2493de7a35164ba2a
Date: Fri, 11 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668126654
