Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2527F2
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAA9C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665119453;
	bh=6MOQnw8zyO20tsQcAKrBbtsX/oZgoNZmB8K0HvBDrwM=;
	h=To:Subject:From:Date:From;
	b=pjaIHe/VNRPsxh98llkYbMx7bAx3kmDh6/xJyCqmok5tM/nptgHcu9Ol9CUFyC8UL
	 l41LjffFakiWkobXMvVvVSeqOBFh1nibC9WoHVqXzu+c4Q5aMfk5NhB0NC+vuoiRGZ
	 5njSiQ9VfntFXfpG3nth0vA+3fCFgrovjYaJF8evaeJTTLGt+ZQd4mWUGoFUa4EoeR
	 SDvfJRCdFDWlJbEmApo9j/juhSQ6V/k/GMD6SPtn9x8P8oMdx+Fz5PK/5Chfv2+zFY
	 Dy3sTdngifUyNZ4ynchyfrdhKHvWIaZbLK5iZT2iFy/mymQz6SUQCWH3ojwMy1ZI5V
	 igTtVizCU2TSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591FFC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511945334.22080.9255569476251881494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38d5ff26342e5ac280377d3edc7386e2b226c9551f1042900dc07071f79bb38
Date: Fri, 07 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665119453
