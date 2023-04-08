Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4853D10E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 02:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38DBC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 02:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680921065;
	bh=0WB4ZSQXLpCaPfh4z37Cy48U75nZgzGcTVSOl4cizR0=;
	h=To:Subject:From:Date:From;
	b=fgPaDiQT/UqFKF/KYXCqaCIVIu4tFixkidu9YBttWzXMCLMoY66aAL8vZGGX+QYJP
	 WbluO0IMjL6hJNhOrgOlI1EDnnX6JVYZGn0cn/H2ggiBlbJ/kPYBz58l0CTy00xBns
	 Bat0WXnwy0yXobHbxeVKVdCGBV8Uk1RzofS69CBf9L0/n2ItpdVaT6G8Z/y14kyA7V
	 Jl9EvT8D3HEN18WXufcce8OUub4RAIQKP8OmuS8uu9AlgIS484WqOaIu63WYStL4cp
	 7/wjKlop98yT3ZZh9Awb0Q+rpevJYqDJ9FLJKiqJ40BRhhAtJEkCyj39xlE03iJemx
	 Ur9LGYqCw4lgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0601C77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 02:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168092106577.30688.11309547272138673556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc4eab2fc24ee4441ba62a148048132c99e509a9514772ca778170a54853b11
Date: Sat, 08 Apr 2023 02:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680921065
