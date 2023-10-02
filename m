Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DD518F
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 00:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E04C433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 00:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696205168;
	bh=uDlCVS1u6euORkGa317zo5c76ksrLSbnvYUpUYW3OAk=;
	h=To:Subject:From:Date:From;
	b=CyN+Pgol/gcFVCvKtoKQCJw6VuqS7ebccjdlq18iyib1/XJs1FdBmwiEjmkJXb42j
	 22Di3qQYzdCPFhntRto5XPWB6K1CHJ0+BkOX7T1Dj62MU8Ba3ZcvNEmdqzfj1WMpPW
	 IDgdntOvd4dWC7t7ejnTGaVFnwQXAxK7vIrrAxPreFwv74Q4qbxs/DeGLOn7ObOS/p
	 ywcp2Jq3kv5+WRNcNoOIsmPH329vNx4k4mj9QgMfnlC9PaCG5glq06oTCFjTrKPUFg
	 iGAPAaXEuYGNjZwXS/CqhPwO5om+FYcUH5FbERjCd+GYPhjOsGIrqkij2gEND+xXPL
	 iY/0GSMtDCppQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAB1E7849C
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 00:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169620516875.7624.7869559653547442914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a19ac75129ff8a2d8219fd5972c62662f1e22a236c9d84541e19174360621d
Date: Mon, 02 Oct 2023 00:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696205168
