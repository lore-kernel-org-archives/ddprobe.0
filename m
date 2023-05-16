Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABFE1FB0
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E52CDC433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684201265;
	bh=e5B2fvgq2WbjRGlfbdPhNfW9us8Iczu2cshykgqHl/w=;
	h=To:Subject:From:Date:From;
	b=jgOY/k0GZO8I8VPfd9qW4blUGOUvyI2ENIL+/LCVExQRQccnHxprffnA7ZtCodr1v
	 fz84phfYMo9yq5cuCti5VZtFF2AZGg1f+IyL5lJmJy83hxoL0qNk2SPR0LpoMgXmnm
	 vHzsU8CjdQx8KhyyP6oQSc+tdRh0e6iA3BUztuGChD8oFtZPlW0uIwumr+xbaxnBka
	 /5mD357HJqZOVYEWlcufD3067rm7+ViulfMijkBMjISduf3+kKZPX6sMcP14Pgcxs7
	 965e01dRmDTitxNkl/ha/xcKxD9UjXxOIqUvpvTVcAm+HDBCuT6ep3ck1PN/6/7wMM
	 O6wql+6Y9NpqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E84C7EE22
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 01:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168420126578.19245.11295756068808289105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ecdb99301eb033a4299a28869b7f92754f4597ab2eefba7c9d908e955eca7a
Date: Tue, 16 May 2023 01:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684201265
