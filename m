Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348227C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 11:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF631C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 11:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683630665;
	bh=NsIWPQgRo6O+XxBuegb98DEfCWaCUi3Ne4QQ1W7vwVk=;
	h=To:Subject:From:Date:From;
	b=TaorX9MxB4+M0cEuA58Hs7zBCsaVlE4Cyu96pxt8rPdk0dInHIjMHJE8K+8rMnu87
	 ESOToIfwg/UMl3BYzy9/u8xExyFgjnVNGbL9x5JUWLST9PPxWTI4qngwxNEBktSi8B
	 h7mri9/PY3MIcRDX7BPlq/m9JNhRnngHgW8DtINKydmkkxkj4z2AYkFcB1pWvNtosJ
	 9QVq11u4gljG+QDN+JX5e7ThcQn1l9hd4foDjkTrKrZZzeHst1pjTT9YzuCMwCa+DZ
	 m5FPiEAev7Ts8P/CJ6R36V6YaE3RBPM/HNw7nwy8ipzfGiE72hMoLIGSdbvdNvMzF6
	 LMu38Ccu8i+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC649C7EE22
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 11:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168363066576.31044.16786525043473145296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3271b14db0c806b9a336919ca1ae57fb82a7c87d7128ba52d8b05d6bcc17a177
Date: Tue, 09 May 2023 11:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683630665
