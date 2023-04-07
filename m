Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CB41FBC
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD626C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680856685;
	bh=BmdIdH2nA8Pq4yCZIsefUNxffO2nOkPYZpXGnZWxzPA=;
	h=To:Subject:From:Date:From;
	b=N2/fUk/fSpGpQkgPiy3dAEhcTOxT/ClMvMrqxUZ8reVxf4LUi2sJG7NSVZUNMNr5O
	 OZp02I6FYuMG6Juvzt0otXzD4CcG1HVfEVe0brlbDJB1dXCbOM/E8QceCZPkSbyxGO
	 rxAHDF8cA4ShL6x/KRQp7pJ0rltvSeIQb4khESJ3RC4yKIEcc2tB1vdUJpXEexnxks
	 6+4Xykenzy8TxfDK3i8MCogfsSVki6/XFpaIluMDbrTNY9d1dZ2KZP/dC4V9wybws1
	 GDjw/t+5VBwJuH1wDiiGztyWvUk26ORv7o2ymFR116+CnyIrL/d86JR7WZxkT8QfZk
	 ur+nfSCMk4j6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD7EC76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 08:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085668576.16372.8387835159561677929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26a02387883f073ce04d65026048dc1a7b08709955c3a059c4ce182920c515d
Date: Fri, 07 Apr 2023 08:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680856685
