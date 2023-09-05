Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC97375
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 01:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7A8C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 01:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693878248;
	bh=ul2GY27Uha6ypxBr9+DnWWI7++A8aGrzP3HdD1xXuiw=;
	h=To:Subject:From:Date:From;
	b=o1gvh35JtUMQgAlHubcT4+djc4o9Q76bW2bN87JN+TKeUIG6uP3jA4wu8xQoff81p
	 OKLUcDH9PBwDsuIbVrtqrFyyqmhoI+8Hbw+1cXP7yxmbED2tIMdqPvQbZlqlzdJ/0o
	 JrZGB7ISyqXi+I9G4q5ZVnKMaRNXe+0CrvjAE49aZ1zaJqxJHBFKwc3kbn46b9S9Mq
	 /aftZKm7jNCMrwCrKl6eZo9i7iTWsCnBIMxVGTLRoOV0R/HlALuxOawJb1X3D1eQWw
	 cK3GHc7nq/7ixX6X8wM1hAjZDFbrLN47VNwHT9FdT8XKa3LCpp8yyXsRL8K3UWXmKX
	 8zXeoDfiWU41w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8415C83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 01:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169387824866.4772.12493660976079736570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19e82c3f7380a3ad919c2fd0d7e6d5fe3cf98b2c00bccdf77109e020917c1b8
Date: Tue, 05 Sep 2023 01:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693878248
