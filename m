Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39D87EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8423BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672825887;
	bh=Hb/h0JR1v0Vp2L/5EnsseK8YMrzO+5VfA0SHmNYooCE=;
	h=To:Subject:From:Date:From;
	b=RDdu7KfY6EAGovyyM20KKIHFqpszdc1+QMwv5LDX6YHVjQWpyotnZuo3Mf2E8P6t5
	 DEQdXhclTP56x2j8lz6sNGIq3P0GsuvuSpDPiiO1gP6rtZC6VA+5vKRxJz2RQuip3y
	 tc71B5XU6AOQ+v1E6EEAKY+//26BHAJA+6EMF6kENkoFIMyuu+bCWgJR1Zf+EVvlM3
	 EnexRJfsFstlv6oLqbP9iNhcVa1vaOfBmtYxecN9+8Jh7CLe9VRpNEZ9idzPOqdStg
	 1OVbUlKFa4m7s8URFdqs0mNyK7MFYN+/yYaxtNmyDbTDWidPqhovmOFiukZtYD94Lo
	 HZLPvM/gAIILg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D1DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282588741.10279.1883835533312210576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4243cf33d6727620f436f8fcd7b87cee4a94353275447a3ec6208978c4c54c11
Date: Wed, 04 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672825887
