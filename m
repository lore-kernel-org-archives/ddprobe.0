Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6742CC14D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A9BC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687988588;
	bh=Xjy74tm59B90auBqf6h1EBe6/Gwlb3ru6vzYbhsK8Yk=;
	h=To:Subject:From:Date:From;
	b=rJ88oJz2QHoD+NT+EOr7UHPM3rmO9RXvB5uqxst420TvRzxvUXsX2bYUkb/hOwQCG
	 bxmwg/Vd0gt2DgHJfQWlMW+rT1mcDRfE4og/GC6VnZk4swc8K+OzHRlQJ6IWgsBlTX
	 WzEjLXDvzIeieRvkS8IS1osOZvTEjyIUWJbz3GnTuziBBZnqaHyk4YEABktZfa+f+n
	 k35n18Ee5/E3Ilo8dIZs1JMsB4OgvuWCNIpalSngpfNc196Psa4FQSw6khJ/dleceA
	 09UfrkcaB2Ul7Yhh/3lpkFzZBWsthfv/QRsWQl/kBB6moJUO2aC3mffLtYvjAQzNgs
	 GqqInexlfcr4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF03CEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 21:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168798858869.31995.7538634380528951858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa231f7a6ee4e49fc7dd4223a513781d840ade86b86b3ba13c5df419c351f42
Date: Wed, 28 Jun 2023 21:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687988588
