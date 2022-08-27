Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC67917C5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73892C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661580652;
	bh=XB2TbfLad4/IiXp6tG0e0DJdPm2TcHGbm6uqBY2UCEg=;
	h=To:Subject:From:Date:From;
	b=tMSZFPBsLM2esPSn5SWigaK9EjfNTTYJaR4r+pF2P4mdDvaxeK9E+eY178fCMKPjk
	 X+Fs8gAfJQyvZBk+PdIAK0RVIJeyXg7QAtSQR7IlPqPTaqfjOIHlVGwYFVNYHrP/8J
	 6rupraViYYWv5auCVQSGogmvof8PzuR4Sn+GIj4feRtevsAyugAA3U6UCiRtQ7y0qK
	 53AsSVaevM0AUZcYG7iL5Z9bpoumz0wFeo9oBOuKE8w7EWUzsNs4RMpt9nGFQolTpj
	 tMtXcuXsq/2OsKkfT6Vwv9cccrmxrtaOnylbxCctYO35EPLJzy5sflGebpzDqWgQik
	 b93xNcyvh+mqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 596B5ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158065233.18716.11479681568244860869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3518822d11d0030b084ee954a678b9594d638016e4c48609079e97dd14bfa0d7
Date: Sat, 27 Aug 2022 06:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661580652
