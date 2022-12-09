Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95E92CAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776BFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670590887;
	bh=piqVaHRtw+f/zoaJRrLBX0UzOilOLvCpjGh8QwrADcw=;
	h=To:Subject:From:Date:From;
	b=l3l1hI/H9DYTwDBNkscqkKjsBXcYpl7GM4tyuWVcYRhImmywGi6kbfRk7vqtBg1o5
	 AaDiTShPbhMVXJFYIUT+X9OqmglC6wcOSv8MR7PTwQJEdd3CT9weW/+f6UN3HyS+ZP
	 hjCx6uOV8/kJ/RT62OTKEjeh+CHT//Byds2/cHQ7JqEaaF2I6Ujiv2cwLyAZdNO9oR
	 djphBtixWtzsgOH4jBfDMwg5KO2E5WyRlV4t0q3rJZeYRbjU7YOFF4s4ABSNSOPVol
	 lQwDLQWXctqJz5a5IGC/AVQ5ooHEmkgi8COBW0ZXMicNBTnTCdbZQ0Yx+/8xsXlaQu
	 k1JJQsRIjK8eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611A4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059088739.25613.14210926135675151889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20310af579212744d26d059d8773d30c3368f284e823ca5ae42c88c5f536d65
Date: Fri, 09 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670590887
