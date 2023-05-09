Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8377C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 00:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FD8C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 00:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683592805;
	bh=nuvLVcYga5EoWycwt498dYYzvMbBAeTeRC5kXqYffpc=;
	h=To:Subject:From:Date:From;
	b=ayyHo6jfRvT+vKSFXevxuEHlTnVwOvusIJwLkO0J7OX6+YTKtwL3Pxo6TNkzI2J8/
	 GWZd6brqcstYkRmxe6Li3897CZw9rOKVHi0Jro1q8pV0NcBNClkPPHuHDU3t86hXaj
	 enAqev05pvFFz2RLFLzD8iiZdVAKeaXe1cjeSFiKIje0csxVHsXZoLstFSLPvC4aas
	 OvJnKYbDB5yaIx8Bcx9pY6BnDp2/fA+KSZFctyJ2o+RGQX9tF4utTR6mVqxhoo25ht
	 Io7oh127QKC7TR9AShvH/ALd85m4NQq7TjExfM+RKE9PvE8X4e6anfu+w8UjxP1Pzp
	 +AGrvFBdnJTsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA66FC77B7F
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 00:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168359280575.24737.14486513954165276843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933de314d944b55a0665c164dfb849c93557e9072644d4d4132a6eac574c78a7
Date: Tue, 09 May 2023 00:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683592805
