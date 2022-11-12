Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E128129A8
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7845FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668271254;
	bh=WdPJINW7di8MvoiCLvWd0P+JCwmdjJI4tth1dTFeU0k=;
	h=To:Subject:From:Date:From;
	b=OACStjiFFTFlk3oGNLcDIcMyaqTdB2uguB9C6/UTax8q5XVb4hVlEQkuC7oIp6g/I
	 /8dxtWXsXEGYa9wrTBPzwfMCQ/Op9NnXRP8ghj60w1Zj+ucfmFJ0J+UvR1BVglzI7e
	 G4YYQ41DG4Q/dOSpj+W9VD16ntpxNb1zh3BZtVWecv5LpxwQOk0QUcvM+kaVFY3c//
	 gHNkfPq7I+wvD7NE5cLDtpzhi4CK9SLpjU5jhPT/BgExYvX927pUWJti1m09JDwU6k
	 LybaYsefmBgKFRwtLRQ1NR/6bRyWGbj/OsF/PKyIzzo5tfQKZVUwrfWYqFWsnPwrs0
	 rB/Va53ou1m8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561BCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166827125433.8292.1131986663130841916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18fdac43141cc69760b7cb2b11622875c41e5b44c52d1295e5c2ccd737f7e33
Date: Sat, 12 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668271254
