Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F4B7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6793FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662976253;
	bh=vigWoIDv8WBM2OIP7Pf859ct39ZvNU1ff6/Xb8Z+ggI=;
	h=To:Subject:From:Date:From;
	b=P7++3t8ikBM/IC88BBYrE2D5lYEcnAEO6Sg22RAIaMJlCEIHs85UMs64g12BrccDv
	 tLnui8FRhr9dHjwHyK8u+BMy+hw8JNpbxSJozqqSTot0rf3Vb+X+8KQYKmBLbeFl7J
	 horRvTX3oIiOllzgTQGFrzt6WqRss7Vz9QNYwMFGE1oqRa9X4NbWNo6e/bJkg4iObD
	 ckPpkux8qxV5ER4yoFf+zSZpgS1FrT2dDoD/Q9wlygLGkQ3/mYb6S6mjttl9ubzXRp
	 da20ckMGF05OPKWiXlc2FAIoP4AWgvSp8uzgqyi5Pk1W8aeMUaagfe1tdclI0eKk4Z
	 iCOMQ10zSi6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50ECDECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166297625332.24694.3803618066007916793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc0b8b17e8581ab0cb02de9ab8bc9698a520284d0062fe3677d1b6f2740c190
Date: Mon, 12 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662976253
