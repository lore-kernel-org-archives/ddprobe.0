Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70A41373
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJnUInmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D59CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703303296;
	bh=ivWQDmR2mA7feBQWf/izMtypKnht8uWaJLdCuGZfzu8=;
	h=To:Subject:From:Date:From;
	b=mJnUInmwoDfA99bvN8LdbNxvpyZ195LkUsxhIxy5jqj3Coy9kBAwsmHsdY6Lkddvz
	 HfZrHkhu4VEbs1K4+L3/OIPzJBIlOkJeaEIdUsPU3YWOsrD2sesmodU/fNgxS2g7fX
	 ae6k1JMZ8MZ10CPX+cBPkQxUOkP8K+twXK/m+TFzvq4+E+vmYrq/8wEuqjwDpHq7TA
	 RSbeJjbN1f3JxVw4y7nq8Q1Ifpp3en6AY1itip/EU/+/2of6zkM6thl6+p6oEsLJKU
	 ClnNayLQToDEAth2RjZmwQxhh+6KKq95P7csvPPwrVLaonQrviWE8r8RXVrNawkFA4
	 Zv/81nD6nTCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636E0C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170330329640.1993.11545942795897863472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788a188c23b89fb9652d3c87083e9b3b0eaa8d39df0f24da27cd3a832401b2d1
Date: Sat, 23 Dec 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703303296
