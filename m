Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE37E2569
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74433C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664623853;
	bh=/7hf3UBC9Mmovnf3s2E80ZTUCdFVJXBxJO6sPxRLLMQ=;
	h=To:Subject:From:Date:From;
	b=flydgySTWgZjmS4xNCHXbSsAq6ps+Ova1gpkCS4Lk5aB3INeP7GUibgsRatXoOCev
	 pzXX41FmPr1YKdsgzRpwjY0G1bXtvnaMCmrnD+zDWXtyKuFXeNc0elAKjtsMtP9lKX
	 yVaYjVHpBAJbuicy1uONCDroP9oGGvpvW9s75gwXHt1l598/YnfcryCp5Q4da0UOpa
	 fsWBDZyKy5h6ZKHXpRpKbGvqyJMg2iSG95DerUi0FY5AmREBRupXsxqcU5c16k6lhY
	 wIWl856njeRa+ihLW5eNDztxjUDLXTiudfzsDtCThFeBP6d6nAsPf6EQwHyHpal7M/
	 MH6wH1F5MUvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 588B6C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166462385332.28273.8972979632368894667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab4a3291d0ab0a7c1100568bbae1deb5ae5065ed3c93653d7c1893e14faaf38
Date: Sat, 01 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664623853
