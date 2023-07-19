Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB681FB25
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 21:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4D8C433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 21:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689801128;
	bh=Naayovi5eQQQ6beZElRoh4FTZtA+9yDejL9QQqkIopk=;
	h=To:Subject:From:Date:From;
	b=Lja4xaGSW5HsddRPJPU4Gk/61VSzL590sdl9LdhyO/NvK2Jju0w/6+FqtwLgaCTdB
	 14SP5z2RdpiZKjz+862LQ/xch07OPjKePtootPZfIeicgBSwJtNVD+5cNWDJ1/KBZC
	 drBlhQmj1gWAxIOtJqjik8k8OWSES4GO1OUTiXLrFEYc2hXtmoGZzmOgKTQ6PQkXc1
	 DznZATDHxCNCbrDDoKgnao/u7BiKZo9qfOjm9ODYbJfTUt3HgGaXEGZ6DPgePbk8qo
	 eVhHeegpa9o2m7poqJVaodhGD4Gex1VcTMX/C9mlxHHZt6XhtbZzUuGmJWjugY8TCl
	 r2bnRnrS6VWxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D49C0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 21:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168980112872.17143.15894305117289675063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa95f136dc8abbcb4d7dea58a5130acf518cfaa3086dc08f365e905831e43198
Date: Wed, 19 Jul 2023 21:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689801128
