Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33A0BA28
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84DD2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669753254;
	bh=NilX+ne6qnUWwmvqLj1wIwkkonjk8qDJ/4q5kWtv5kg=;
	h=To:Subject:From:Date:From;
	b=U02emyN0cljumBhb0mg7Jxf2IWAwCCV8c0nZvYn81LCw8al1KmAttaDAgqt1kvwAw
	 B0XExl3coT24VEY5XTLYhOdtWmTuA/ZI6UJNwfciFVhw2QUnH7jjR31OOwoSivKNym
	 lCXAEabeZuqu692pgSfvRTnZSCcuhmY1WBPsyyA2pTpKlRqYKPV6+bEktDsBvEJRxT
	 /iAJSSc+ExLqlVj1D8Bj0icqqr+WivWPVtLYunPH81WKgPnpDhZDNaktNAsePoCznJ
	 Lu4mNxJ6C5qUENXw8hP9qDVkfX3UWjVuFEqHZRGXl9mB5SsJHwWz8rz0TVtH940cLy
	 HmFAjlO0GcYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C4AFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166975325436.12765.3397354789315398568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9d00ad1aee3d233858f435bada9d47b90f1ff5a896e3677e3ff3bb262bea07
Date: Tue, 29 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669753254
