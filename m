Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A0536C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93A0CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668830454;
	bh=Pi1ikf4FFrL36E1kBGVpcyRVeUC0sCNqLcmFddO5380=;
	h=To:Subject:From:Date:From;
	b=REWEFY+Y56LIJJaBrJGua0n3BGLFgBHAyEjGcEPAZZOszoVizw5IyE63IjNzyWb6i
	 mgmZ9N7z10hSqlAzLt0rByopnhMTOcx/prb+MJTS9i1hHSObWgyxvOFUyq+C30NHKC
	 ePqUOdpNTQ3q5ASTRXwixPbeWAHssUIdyQ1lbyE/0qGTdvj9INmoSlIeTBSPmGSNo8
	 bFV94mWmuDiHiShipMoCv6qLxN950rGvy+WntIJjs6u0iwxf/dVr1UZ5pjN1kWCvmS
	 0OV9a5IymMxawiURyAo7FEy6ukvaHaI7IVULdq7xjltYllsv3BWWwv3GyDCihxpXys
	 BxsZ2Y5heY85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70E75C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883045444.4758.1113197330354832686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961e19edb964ebf85aabac07eeb35a7c1c53ab477fcf9781cf7ae1653d0bb6bc
Date: Sat, 19 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668830454
