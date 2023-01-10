Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7001290A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF72C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673340087;
	bh=RQkWjLbLdMqyK38OMXufeJ45UXLEEBYaVSRtAI7QjOg=;
	h=To:Subject:From:Date:From;
	b=uW/3t49xLTyAm7sVBuNuxN5Gpeyn9IQXBlQSUjwyu/ltCOuxgagsZN6OAavmZ5576
	 s/cp4jtkpGEpbbFguQ67aqOgGa6AZCsbOt6mum4oyk4ANc3VPlTaO28+eyiGV4j/iI
	 N+5WRRNZdfiLYRy9v2QEjQ6aCp1N/xyVfYmtmNGRFgVZUsUEVMwp+aZ1c9hhDMAuqC
	 +F/9Rfg8kjkxD5yOID5258JspPySRBGomqOw7wuBCV2NX7vTddGxkx2YXurTuKheHJ
	 ZBqCw6mZhs6pfEXNXBJf1M2B4TET6VTR4z316OLuQQciVgwcEdDTzj2MtAMu9TjJOl
	 /drP1412Z2BsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B83C61DB3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334008741.18877.13800509323580455975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45efea12d6ae2e9529f659ae9f04cbce723ac574918b08a9a8b711db927daa47
Date: Tue, 10 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673340087
