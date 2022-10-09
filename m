Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A883B2571
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B227C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665325853;
	bh=MO6BK7UUaA4uci0wwxdqjg2RJ953+l1lPImuxGGtop0=;
	h=To:Subject:From:Date:From;
	b=JKMlCfn4CDvm4j2t5Ow4c/hMHk4sC7RsUIwJYV9N9ckJf13MSTr6StYNu8CCj+t7O
	 FrvfhGq6OxSJ+xANRz4oGkP1/jvanVJ4w6hVFDDxUudPazWFoaH0ImPmJ4MYfVFEjL
	 dI9a4X0YlU8xjiAmev7zJ+4C0JRW3pLH7ZTlwYqj8HQpJ0vyESDD/S6jYlz4X/bK9v
	 HXeEK9ruM2nMYNQuUqNsPHJBD6kv+mbjOlVhDaERs+Hp0CA1mhbIIjsN55w+Tnzdoo
	 S5J56514nlx2O89GYTbjKSZG9+xBxhDWkeVuegViPQOGa+VYVA/JF1NLlqPc/DuFcg
	 IayDmLdAFJVxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556B5C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532585333.9839.15563803784412690872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b84839e6176e42988f578b212693696332d17aed8b19343b6c0a2ebce65115
Date: Sun, 09 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665325853
