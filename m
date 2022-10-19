Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FFA53BD
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64641C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666221053;
	bh=xrKH1aJ/eBPFZ87hfnSikNie5geLT02ct+ph2lC2RiA=;
	h=To:Subject:From:Date:From;
	b=nGKp7oIVgaiCTF0C44lJR78bnRBGtgsIzyMPPII8MNXh69VGS9Wk4Wdu9Y2xmh/Jn
	 cp0GlqoOqJK57b7+wuu6IUC2cnqW85GYL5njzyNxoXpSCS+5+778wxqpazzM9jdMXG
	 PXHXYfqG4NzeJqOnaIBfx1u5gvL1y9WZ2h+hRYVR1O4lotkX9HQ5V87z9RwxqLKKuR
	 5sTNPw2y3rNNesc0kU0p2BrIaezmmubwtQ5bK2qHL9pPDG0+Wdgy6uaouq2outfbnw
	 LOqje7ZqG4NU3TN+mGTx6dRMtAvNPOBjHrvK8XDYgUuRrahPIdcqkkmhLvQSMmSL6J
	 +ovrCg9kuiL/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5326FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622105333.4089.11278991735639895660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d6a6727f167dcd4e976ddb45f7b6bd61f6b749282128f7cda3e1b84d442fea
Date: Wed, 19 Oct 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666221053
