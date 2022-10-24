Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B138C441F
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C631C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666632653;
	bh=bouFFJVBks51mi2bcDHE7NAbuvXSmdPOY2uFbXRELes=;
	h=To:Subject:From:Date:From;
	b=HNY8qL5Al1DbDuTOlnqF/xtMnXS48TEnEnYplu2oDwyn2UANIW5Ymy0xFT2JCj3T8
	 Ii/AO+YvFhrhSuW0ZVgySVfn8yFwQ+bAVb2tm1zx7/nxNYcSUpgXAYsBSJrlau7Muz
	 OJmzt8//qDb/f3kUIzMMz7C+O+jtZmspKCc3YgODgpvy7KrPIOmvDZCtvLeYcxS2U0
	 lIodF7qdyKH7q2tc9hcMxzQkMjjK+s6b6s1HW9fAWHujNH0P0XGN35jQ7F3YeX6QtG
	 krh5Q+7dIUXasqYtdQ7W2M5faQQxcKHxAnAluCSkK/3kuxCdLZKsCJXxT4oWBD9FK4
	 vISSf4WcWqPvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A51C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663265333.25151.949940614538756959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c256fee2e38a3cdfbbbfc3c5adbe67a59f55a98337e5f5132aaeafdb9f584066
Date: Mon, 24 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666632653
