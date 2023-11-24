Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7561EB3D
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvSlsvI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C9CC433C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700830696;
	bh=uWuT5r4a3C1ytWxAtZhKh7g//jc7r94kP28cwv4kF7k=;
	h=To:Subject:From:Date:From;
	b=KvSlsvI7wD8qQtigHKSKRZ3Vnh3z9XGFJYF/+aae1sJH+yu0qE0f5axY7U9Fyh6Wg
	 6f89XW89vD7dpjzhrPGlNbksEh0iXGIM2izz2NDWt51cmC7JUWy6RI9Mlt8DBv82Zq
	 tjvcoCzmrWFRnW347ff+etHKzlq1sRfIr4MyCP38xK8QTrwhoo0vBmP5NT8rKsUJmV
	 w+QqWHI8H/jLmXcp9FFcxL9b82btS+hcJYZsugdeaSkoX72inWlUJF0TpmPmR7cCdP
	 ZuQ3CDToMb5SBsjBoFMAEIjtvrOEhfCSlkXgQ9GQcq2AHCoS7kyc1PhRJIGm979hXB
	 D+F8bd0h5BHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614B0C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170083069639.11404.11097349647826115090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9562adccf705c758f56691bd0d790101ab3d4c5840023c1d68baa9976d162be
Date: Fri, 24 Nov 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700830696
