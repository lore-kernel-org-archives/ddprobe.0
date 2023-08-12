Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5262F636
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3725C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691800988;
	bh=c/66P1/qaZdBYC5dYhX8N2y7+vK+KDAAfZ3wUjggNp0=;
	h=To:Subject:From:Date:From;
	b=ezQAA7KXmAs6hOhCV84T3MvNK1hiv7aHO1Cnm0VY9rJ8j6Y035c6cC+cl0UhV9+I0
	 l3USvdbNAFohrHYXib2o8S3/bCm+uqIWT7dNTONTOD/7/yJ/U0Nv6sLteYzJmpnDTp
	 bil1MJF9zRzHk7nDHnmMsa/W4nvztBE/j07PMt/AjuIBZYPUWqlQUC35x8qwE5q9Ve
	 XyHC06XLoUFDSwl3gOmbN8x51CO0NLBmAR/+10zoIAuzFA2g1Xy0mlW1YS9mhMN5zX
	 ec71/hmVM+63ZA5NiKGHznCgVmgDXgaz3UcT9/QIL7R0625FI+WQNS6TlJAWU5VcsU
	 bG/uJ5QygcVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5AC0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 00:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169180098868.16822.5553645267117509651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b34f70bbe7da5bd8e9a59f40dab6f949711c6555fb1595ad216312e64287df
Date: Sat, 12 Aug 2023 00:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691800988
