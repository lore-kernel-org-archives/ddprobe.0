Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E55C94A
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 006F7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681854246;
	bh=5ch2sPpL3OOwJunG+2QVdR/1aZGdXftEcEfPwAIHIuY=;
	h=To:Subject:From:Date:From;
	b=oqN9L82xaBWhmgVOmNlr2FkBiCuduPRBWWqrkImMhV9x+p57Ap+QOCCnFTw092oVk
	 iT8l+beF2QPYHX2xDeZugppEQGo+92EWbJAEsq38Vs+Cq/3Hxztc7nUvE56DdyXBJL
	 xwSNUE3a9NeEoQudZ4HH3YsYRo6zerCN49qtLf+6OXlVG2KHgW7tfdx8F9Rp8qDX9z
	 xPEuBKOZeFIzmkyurp/0oV52/Sz38oey8rqmQU1zjJNL56FJdM+HPhEkRdLmVEkXS0
	 +ddopZIWIR1fpMRFR22cthBQlylXuheNclnc7m3B1WFh77834P9IA2IMlip1uV6Hpd
	 GP/r4zov/zmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8F16C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168185424586.27640.12663567106532842849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d238a759e0b9b1dae5757e683e2f891a90485731783f263e4ab232180b0b67
Date: Tue, 18 Apr 2023 21:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681854245
