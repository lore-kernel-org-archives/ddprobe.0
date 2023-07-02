Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6792128EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 21:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F165BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 21:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688331909;
	bh=ioOq4MOZ/n1PlsvO9f9AZTQnwxswBaWSZSoHYw4n/vw=;
	h=To:Subject:From:Date:From;
	b=ruUy8EsaLZt3KBteFaiz5T235k0ymzoTlwI52kroTUjAUt1xp7GTKz1y58JGbWSgk
	 oUpTin4LB7Evs2G81SPrbE0vh5+r56Va5ZuiKlItwvJQvi9vtvEd9D7ZwVIZtWPG2f
	 ObIutc/fXY2AV7K2rHirFBiBwrC/2YVP889R0GhBT7AOxNaTSyFrHQ91sWW0li7XRT
	 1l/BAa0m2yDBVxvlLl7ZXTP6iAoYuX3Daqo4hKikHE27NmealzaF+/tuOc4WhBoU3v
	 Ac8Bbr7Afa4Ruv1IZZ7PcJKRzI/hh9gdkLVR+dY27d1BXicRcquRMFi3Jei0FkZAhC
	 zDWSrjwPTT8RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3178EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 21:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168833190873.14215.16224323956257515399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828faafc278d5bf071662fcc1ab32dec19926eaebd490d54102ef72285cae869
Date: Sun, 02 Jul 2023 21:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688331908
