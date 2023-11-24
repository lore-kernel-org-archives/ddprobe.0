Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8541DDD7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmXrZcPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792D1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700825896;
	bh=gMOZoBIBYZaYBw+sVs8Z5Z1DdHO9D7a+13n1l+fvUIw=;
	h=To:Subject:From:Date:From;
	b=BmXrZcPN+dCgv1xC6HIrrpRVLVkpkd35usDsOVszScLSKuZEv6aSKrp09ZtGW9h9T
	 ASXW6O+8ZPbwqVgPzToJ1Z/doHP6fLfx4WQIGfyZmJmABux1uc5M3tbxhciD4hS8iA
	 ZxIfJg0Y6/hdOVIM629uUaLed8LTDLc4m0Dp3nQx1lDLely1mRk4RY4d0a9ZZun30z
	 PLo/4YwKgnDuS+eOcEV7KsOGcPEiB2nHZTa0UHELgkkxDx+4Y/vqYifOb2m2jBnQw0
	 lMc/tAcRk56lLTpxq55QYO+/I05t9Zeyaq4/oimBzJ1ECbE11BoZZMlokpqpyIk97k
	 MH+yO2kRYjcgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61084C61DF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170082589637.18541.6538981340076268979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c451d7f60ecdc829f0848769678efd932729874307b78cd51aae3fd71de40db
Date: Fri, 24 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700825896
