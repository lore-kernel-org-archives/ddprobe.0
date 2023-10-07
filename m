Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7AB17EE
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 03:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qH0M3lvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B62C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 03:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696649828;
	bh=l33CBhRXTXfOBjiPvFWZDp3gg3wtKLAHAektwhd2Mvw=;
	h=To:Subject:From:Date:From;
	b=qH0M3lvhV7z1/8CeDYN2h0VnTwg/qUyCC1Un15bgKdL1Ss5BjAsrIak5G56U44v3Z
	 fimuvcKqJBPI1AJ1T6Vs19iSJWTkqPoFNsBjG+Xn8N17bThfM8J9ThVMcNoMYPlbW8
	 aEKBNmT9FaKUN5IqHHc63RQqabK0MW8b2iOkhGZ2iS5ObEPBc1sTOoHqS37aAb2fdy
	 RJ8kF+GRAD8WxkEL/e2h6BCAA1K6L0vo047fYmQTGrDk9Efi4BxKFNPAD3pU0CfoEo
	 8JrurbOkflUAcnoasHH0e8G7Jo5WBQ8JXzeuROVQzQcabDAD5Y5UixmVdS1p4PgpKJ
	 Yv2EGo2JHzweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FCEE9413F
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 03:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169664982872.2280.5413828399742732576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4b447bbc3f25fbfdc9182c5f50def6c5532c7cbf9208898ed95c7651cde3ec
Date: Sat, 07 Oct 2023 03:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696649828
