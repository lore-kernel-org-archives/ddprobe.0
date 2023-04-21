Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6162F27
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 12:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E12C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 12:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682081345;
	bh=koqdfBx349L39trPeeYxLvspl/PmWh6UoclUxrZW7/4=;
	h=To:Subject:From:Date:From;
	b=plEgRw0IYReWhLmjlYj5qSYZuJrvQ6AtIbvabZYt05FxiuzGPzlxEX/VHlEZ7BaOV
	 7ALAbgKKrlE4N4PhiDD0893mt61cZz5mRDQwf4E5Fxy9Kt2Tqoz5i8urqxywBjxK8n
	 eSkzcN8Q3qY08pFbzGGk1TG17oMIXbMcsu+x7eIeWE1Wzh+cXlQ1EnNS9ufI3M5/FE
	 tVzL0fzXx5gDFCXCcDGCzFMko/fUjpeXloK1UCCjNy7sisZ110+KNHRDLLmpZDMK7s
	 MNqS550moNYZvXnMhHTWuJXa8uSaJaxYnnnBT637QGTeCARQ9BzlKqoNShyGR/xprY
	 oQxMZ18+7+G+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B662FC77B75
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 12:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168208134573.14702.13872575397773117237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5902d04774b923ad142ee0b46f038b5d95779177def7a47540c61641a2c7a80
Date: Fri, 21 Apr 2023 12:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682081345
