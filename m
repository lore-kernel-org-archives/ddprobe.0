Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADAC13F8CB
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmtDrgN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7888CC433C9
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701470296;
	bh=qV7V0Y9mAiU4IhU6qVGMzhi7tCzRszeIi1sPGelsJWw=;
	h=To:Subject:From:Date:From;
	b=nmtDrgN+fXL0twAIJ2HiX6zFMakDN7eO+FrGjVwPqbp3EbqaLTdcTfwaeDl5IJlZv
	 JBkN3Pteh4TdFnDVWNncEI1v9y/bXlkv2pVle35goPoDwxiGmSlGnfV3pXUbzb3ZOg
	 3ij88klawmLDI63rxdKf9TDz89j0W/W1jlNz/sGbFDIyUJqcSaMK+HxyPDrLSjR6ss
	 c6Eifg8yMwW2tm+DJbenzibDPLeQWHL5PLlfKgS+cQswUzMKjQ9M52mO4VhUCfd56E
	 Tac3PSJGJbQbetSI9A6UklCbhJY/icQwYgoZWdTuSSOuaVyiJd1C/5wjM/ruPGdYJF
	 85hcVAavGusIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED7BC4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170147029638.23085.453040574291292735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef1d76823a69c94fd270e889ca1a5bca2eb71e516b1c0aefc863fe0d316bdbc
Date: Fri, 01 Dec 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701470296
