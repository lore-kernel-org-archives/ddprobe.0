Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34D7620
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C21C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672184487;
	bh=gEX6tsHKc5vNsTUwpuKSUxx9uCyeu6CUDnxW/VMsBJw=;
	h=To:Subject:From:Date:From;
	b=YOJcWV2JoCzONuaoCHSyr2KX7zISJ5MuB1o31lEoFwlRUlGy2NYvQjCHwq6d4UClJ
	 zCxzC5WxyfPW0HN1di2ucW3VuGNfVTJnaaBcDZGHk4sGPeRHfMrWzgcZcsEN3WMAhU
	 3cLMx/gNcj078zEKuzapgZ7Aw3+ZHhqjZFdd4xjmKTztJvDzTeCOzEw2doE1KCxz0f
	 8hTfSG9EXkWmJRHpMGaQ1kuU8hoyLnf3l1aSFBBXH08DeuQVkRhPRUxcQPVZmR6Ef1
	 MmjKdoMG9czEvHVBrrlLKlHqrdBez2qy86Zn7kY+dTf/ixGNoPz2CjNaoA2YFAnW2j
	 uU3zYnNrN3CYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B2DC10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218448740.15566.5573812126368269355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a2a3240cacbdb61e766d104309abb01f182471afb17d808146cf15a9c24163
Date: Tue, 27 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672184487
