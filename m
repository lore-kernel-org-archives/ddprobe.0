Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42511566E
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 17:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A4CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 17:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677347705;
	bh=NKcXvmYyX+54oGZEddVIrLXT80TvAlO8xtpFjk/MqvA=;
	h=To:Subject:From:Date:From;
	b=tKkJG+sWInuL+LV00p60QiQNcGRTI6K9gYuFWgXUt+CzSaR82uYlTWQkf6xdlAiXz
	 wPF5HDFGjXYTlz8qnMDmnHSTDQwUKpQngjK32iZHXj+dKJ4u7rIDdOQoDU2k5z65oB
	 fjQKyMgVAoTUSPhrcgRWuiWQI6Whh777G9WqvN4LAXfc8qJFO4ezdPOdBrXPvf/cMe
	 Qa9UmvJ8dGKYlaZkgamLDXiSZmzs68K7bZGXjqZHLUM/raRClQ0uaxKLO/JFObiRz/
	 lqvq+LXVN3Vq333qEnjmOXxWkvEkBauHnlPL28dKdnJb0MzHUUY1IAWW0Y7zhQpcnx
	 +iZ+/2ytd8vmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC443C64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 17:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167734770576.29384.8633213808363645377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd181f3949e5248096d7dc685fff2af0c67be2112755ba13425dd220c804d5d
Date: Sat, 25 Feb 2023 17:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677347705
