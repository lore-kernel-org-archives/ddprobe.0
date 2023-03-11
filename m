Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DB87B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 09:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1ACB4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 09:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678527906;
	bh=bi/oHCz/i9LEu6JldP+BuJuUVxHt6kCtc+XNqoNPSn8=;
	h=To:Subject:From:Date:From;
	b=VfsAeu69SwjjerC5uSvONKIxclfkZU2IuQxwHhn5Q5v1WLgfdeUFJQ4HaErSg9RDF
	 JoVJ6CLuFfRGec/BSTggfWSXnuWrdDJ1zIRXsBB1m8an64kMmWsUs5NlbUljqyIIlY
	 2/avZ2+WdIijzmg06tnyDEVoY67zak/ceZLBE70694mWDqRmnfonEZKJyUfiAl0gdx
	 4Bwd8mfyCRbwqPmYGJEfg3N0c9rdmzcHCA/m4c4CGkIEqz/l+6ynftqMdX/0Uf/h/M
	 FdWgYUrI/JzWAetBQvwsc0v4arI4ZtmvqBZ3WVuIzQg+Etv5Xfyp5sJfbyMc09zmyY
	 Usj85bHkYw2jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5749C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 09:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167852790591.15591.10208602651118417833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672c7621e433ecaa9ed8b19d55219296d045a8aa45b3f54e36f3fed44f0418e6
Date: Sat, 11 Mar 2023 09:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678527905
