Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1B718019
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C811EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689069428;
	bh=VmzyjisdOdSCsiyYrSX1x1AtfmSXDlTFVCudH7UK61g=;
	h=To:Subject:From:Date:From;
	b=OxqTYpWPqzIHr/FVYl6HDibmN51NLIK1bgEd662OWI/e6yn6lYvLeU/LiedqM4uVW
	 8osH7LFSKCN2tyidnQuGVBIRsJXky6ySjyBt3TTrmjFLgFnE2kjqlVqMCPy1HZ96Js
	 Zr+YNq6u5j51y1mVHZtA+aIIcYh47apQYTRUyGvsbq4hhgJ+H5Pguvv1xAOYbNaR/x
	 yJWx9/dfkms9vJU79WofWlFpc/Vv1ke81CD+gN9ZM9XBvV7Ds1MwwQKk5Ko24LcqH7
	 ELB/6682mT6qKotO1onP3PYEjWc7dh61YkgJPHdWqTAydXncZigXONc9QLSxOVLcOG
	 D/GLmYw5+KVXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF984EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 09:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168906942871.31049.10087384079308193014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8544647852bd5467905f0a30285bf76162f7932579362f8f589101ac73ec9375
Date: Tue, 11 Jul 2023 09:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689069428
