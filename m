Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDB87B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 07:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8B4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 07:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678518906;
	bh=v7k9irUrT7jAOjaKVx0B2KSd+snRpfFiYt73xJIraIk=;
	h=To:Subject:From:Date:From;
	b=TGlx0besBWd5i6p60UfCYSC1BJZ3cwYtDBNnDj4krX7/NkncwLJ7kLWrft02UO/mf
	 6rZh7Frbyn1NJ9m90lUaIvptGWM/Dinj1rAld9sq/ot+u3j5+8LG7inMaKL1u8Vmoi
	 3/zhmhymzPKIhy0Jduu0XoF06FaE7HqjP8Rflcw/T9pYRDJ53X4J9V37DaCIp5jEBB
	 z/Z4eWc8G2n2WyvBueV0Hf7OILxUgOnEhXsNJiBv9f70TraIFx/N9IpuH+ABHPz+F6
	 7dzYNYkVbYKoNmMNNpCqEnJG3vgMD1rbZbKF4GpWfSmlXLaMaFy0Y/L6Jrr4xIpsai
	 uWBRzftGWm4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5C8C678D5
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 07:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167851890578.19390.4793471761216736982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85915ca6e26c54c93292fe49ad515cc24f9a9c3cbf5aed16dbd5dddfe6e03ced
Date: Sat, 11 Mar 2023 07:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678518905
