Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32D963C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B76C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668279654;
	bh=dDlPbI5JSoUjUvkCir5J320Pj4QPa5h+yPItCLFrOW8=;
	h=To:Subject:From:Date:From;
	b=GbFK+MUhYjgUerkOZCvoPAtoDcAocdWxE+ljYsj09qGeWpTkoWNcyNXAQMLi9rnGX
	 q8VbxcXcEnAhhWQu71ExAGD4TeSE1jOUzysRCAKjF2cLIXHgh5DzuymzsRaVTMuBLm
	 BpFNO0UsRjL2LJNgKNH3GB7k3eUpisiIZfyr2UtMi3lEkMRb1jVQkpj1iiNiu4FDad
	 hO8V0SImVgnnb49SUY5zFW5PfX50IylwimVC4j8xbPuWbUHAbLifSfGxwedO3XMk7a
	 zUHZxLQP6VCsKeUN9qtgfs1C2Jj9u6lV4qFj87HCmq34A9vllbR4j542pyek8EbP/f
	 Qs4g/y4PPmCxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52666C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166827965433.32554.16627381870737085861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15182bd017124886e2970f43b5afd55e9f3c13ee3ef39187e02f9e4145a5992
Date: Sat, 12 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668279654
