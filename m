Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71C2194
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 684BDC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663204853;
	bh=k3HoGTgg6qajyvx6s9Tbi+JHAVdocVghmKNh1IVk9mM=;
	h=To:Subject:From:Date:From;
	b=taA+ymBZus0QnqSiHya4tTUSzc+WdjbklYhkH8TeZYhte6bQIBcOMk+Mup2lJY+9A
	 4Tgbggk7hOSLtumAr5LAzNhoO2HBh/fwyX4qq3JO/n/QNCIl920zjEdBl6Wa8pEbQE
	 tiA1jcn3dM/P/EZAIA7mfc7e0cbV57CL1l/rhLvuoXNRQ+aeWkZFmTsjlTSbF6l92H
	 aKMOW2nl7z3R/zMI+tKIsprlclaJmRTmHGSGncow1b1Fn/qnrFKofRorXgsQFUkkdv
	 Gr7AQ07SmV4YF+cGyBvJRsL+ZYhF+VNgwAaK7tn35vW7sdJO8H521TQ8cMeNfEjXuR
	 jjSJBGCtX6gXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F417C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166320485331.3199.9844721058170551246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f097c19a98436a1e8d2f4204f0ae5c9b534fb5d21dd02977c3a9d2952c7acc
Date: Thu, 15 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663204853
