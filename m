Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED0124512
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 20:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA769C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691614388;
	bh=CD9r9Mp3Rpc+4TRAOzvk81YF/AD3seygSYqgFNucwGw=;
	h=To:Subject:From:Date:From;
	b=Lz/BgH4a7amWLcIBP89iW5R0ePIQBynsaBpY+qlT4o4G9B9iB5z6aoqyhImy8ELBc
	 b9qiLHVrjWXoxnBmPUTGhguPCxg/0AlXU+UnkB8n6iaZ9Aa47KZj7w4GCGf9Pj9JQQ
	 6RaAqJRqTE4uHzepFuPfjC49GX0lHV5J7pdXVqtgnFEx2vZbJQK9ZNKuFkYmuDz2O0
	 0LDylx02IkAFOxE95vv8mJ20ejtXu9nEnFgQ4RTBpdRKPpZZDYd8FC/WLy91gMAEi7
	 wxLK+18PUWiyBDnS/vL27r8Z5E+PufH3WxChwLZyy5kbKHnsxbcB9CVXz6DSdJXeEi
	 MKv06v7c6tiDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A991EC001DE
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169161438868.20203.16366067271922994607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4132b6f0fa6fe4e22c4cf820d1d43bc2b8becac59b34b8ea61b42e0fce6d608a
Date: Wed, 09 Aug 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691614388
