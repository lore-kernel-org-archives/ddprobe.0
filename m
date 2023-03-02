Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E540110B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 05:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF81C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677734165;
	bh=pPq8ZUy/HUo3WCp5egfGWie6bfyQJDfTNX9J45FS7bk=;
	h=To:Subject:From:Date:From;
	b=ue7MPvNTFu3BfhiVugkg3SqRtimInLiLpPrT7OfdGYAgnykwl/LF9k59jBSRvOoSE
	 MA5s8VIiZc6ASFtwIsjqrf013qYQ1wkRMxkJyvjLldJ5abG6bBanYXB9oFEiFw7A3W
	 3ICnG6t/77+10reZb8L9LwJ5vX48FvqC7L69KfK6+LuA03rdnd0wqwYOl7hPjKwuwp
	 XNZV+CMBFbS7wJsAHYHKo0EdkeZY/Bo+/Okc4gigkm3NfCCXhsPYQ3PAj7rNzL6HDV
	 +MhhQoNsDmRnCTrk0hoRGM5ReHhaJcmbS46mloIzWMU46sdt4vF5P1hnOsi+es+ELG
	 MnXFU91Hl+Xnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C488DC678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 05:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167773416575.7664.14186027641428818065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9002c4336921a040927889f256940f4071d1e82478ef789d7b18eccf6a4a8974
Date: Thu, 02 Mar 2023 05:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677734165
