Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD817E
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 09:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CACC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 09:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691917388;
	bh=ztO99EbhNbnrMB16z/SXK4/Wobs+oi0bqANRdP7HYD4=;
	h=To:Subject:From:Date:From;
	b=iQpURbNN91pOMyS6LbuAGU/9E4Fd4XkHFyvPXsdos2asrJRmfidPmXju8sfO2VeYO
	 ImNgxo60X7jPHaZ00WvWS+bWJVDNkhF5uytqbu3GgCIK8gxp5pH87LJD+1XQ6KKyHr
	 44FYDpJdYg/tOKkL3n57RCX3Cq/TV8pa4fN3zLLuKzaaujpTVzk8sZtCX9Hz15cgTd
	 CA+oP6QpDArynqSCqFEHfLBeQnibImiQov9/JN4NFvNQXx36dpNIhQcDmd23+9iNUq
	 4qUevHwVUEo2rcLZTvCKsP/i8W032/08kFWDBpoEcNmM4e6XtrpMiKtU1wDNtB2OAs
	 1sur4qRZsoBcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04ECC001DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 09:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169191738868.23947.4889942013368381910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28276144320d0cb92d4245e6156a68017a61d70c51b88f9d1bd8394fd838daa7
Date: Sun, 13 Aug 2023 09:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691917388
