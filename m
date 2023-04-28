Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2292F23A4
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E01C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682664725;
	bh=j9NFPTDepF2hLqbLGkm4vYODlU7ScbXDPHQTuNltCOo=;
	h=To:Subject:From:Date:From;
	b=tV75HnR1D0qZ6P7wt8s1eHnAwxbekClCIdwLtOxt7+1+XP8rKVLbn5Ntk5rBnqnUJ
	 0n+SWSc4rXOZE/IqxRF4qmHs5GVkLeGS9IPCM3HGx4NEYT5IBxKOGCl9XMbBVwXd6z
	 dRNYsX7EG/Ydqv8NgARCokyMpZJOxcYCTpAQ+Sa3di4Inyabx4p+guYgADM8XjEul3
	 9cgBWQp1grudyDzDGjenT1Z58sBFXRnygGgbtAVFZMweNwvygCINfwhshep35lDrTE
	 YY+Fujf/swZsf7r7q+Gyddk3BioX/WpEo0kXdxabCdp34nSI4hK5i9/sK5H+2cOWpn
	 qGuYyKUrgcLgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68CAC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168266472573.16936.5429886102763810857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd9a534ae73a855f49e7e9981d561b316a467d0cae1d0426bc4156236998249
Date: Fri, 28 Apr 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682664725
