Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B24B13AF9
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDmgHYI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE85C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702135696;
	bh=dtla9/Q6vYuopYKtpt+fag/JfQB1yMFIdQ5xVfrzhiI=;
	h=To:Subject:From:Date:From;
	b=IDmgHYI5Hoqt42zU+evPW/0gXqcQZeZ5N828HZF12GxFCnKNR3FF2QQSktyTxm8ti
	 AKdDkGwZbWHeGQLuTvrIlcGyfuiIhJvPx65M16+xGSgEZ6KF/ZUM5GJyess9xe5YzF
	 CMZ2BNyGC9cAglhvJwnE+nMqooJnMmDCnOOznNglKh91VT4DMDiVNZy1Ykj9Z/NSw1
	 n6pW3Nu7vKYNVQQvXwXFCny7TE1XIg/VVzoeCndP48pNIsrDlPL71x/b9J0x4vxu0b
	 snVX4UB6yFvdkFWoKih3HOeYM+UnosaCs2tCp79VFtA+XzKw1JCYTVoMsaDrKYCvQa
	 fXQByowI9iPYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61580C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170213569638.24338.11210406563012979164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0171517126b70247c8288131be4e340e6c089df3e1d558ade24d240c7c55cac3
Date: Sat, 09 Dec 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702135696
