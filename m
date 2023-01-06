Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E680C33CA
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89031C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673016087;
	bh=ILcecqwNmVTJj7GZ6FSJM8c21AlQawMzX+e4CvVgITQ=;
	h=To:Subject:From:Date:From;
	b=aWyKV6sZ3k7qSzY0KAXIT+eqJblTEPCFofhAsrHgvvq9hfEegIhei0iuEavNZp4fV
	 OR2W03pC6xsASRM8mGH3BZSO0/gnG/uLjQsgJf0scbc4vkRYObaPJnYRFv+An3nTZe
	 ju+qBt4tfa/cbiieIjI/fOWatYmjSyuexivcZU+69YlAyci0L1e7U754s5yEk//kyP
	 11UQs7AbSJsBPiLKVo1EFDDLiqvxaRPJKKkes09U7JLtHZIzO38HLKgqsT9OcmUdxO
	 m6W1vQU/2JHW4YWTNSx4YsKwT1NLHlwNibuDazQT6OTp/aHJ92H1MLgGUQyMLfXbXH
	 egDwnLn8dcW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7D9C4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301608741.23302.6671030429290662492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe01d24e5bcf8cbe41b1f3e190b69aee8d755c01c7ef0bc5a71c255d92ad380
Date: Fri, 06 Jan 2023 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673016087
