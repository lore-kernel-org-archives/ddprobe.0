Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709E815C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BDEDC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681795746;
	bh=Fu8QZ926ikSyUwSIzMrdSRI9Lt0Ufu7jfkzUNFFExe4=;
	h=To:Subject:From:Date:From;
	b=t3pmSLPkoRcjyTIYl5knR8Db6ajZ2OYC52O3bAOmrokT3E3FE8rLSXQZeBduYflsh
	 mKmxf8oNipJG4sQ35EhGcpGp0lKSdeB/2ryRLbOeI5u5Gq/cnPdGATIObPQtSFba3v
	 me46r04sZzYRz5qW2zvJ4rNCUpoBMPUgGG9T0yErKdi+eQiCZXRyqis3L0VNQ9LebO
	 2tfwYToNRcSf98MrrERx9R6E57sFKkz6k813ePdoTpcK/QS8lvUcLD6xw4oOqRCz4s
	 tH4j8O7S4Jn3D+ylso+xJ14/Z9yuM0C1Ur0hl6f/su4LMPAd1eDmG+qpG1nvzlqPtP
	 RaWzQUuOanewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB96EC77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168179574588.12597.13480532843383750499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc197ebf114d38ff31ab49e9cda65b33d1d9af509f6c4e825d0352c8a942567
Date: Tue, 18 Apr 2023 05:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681795745
