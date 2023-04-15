Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4043B7EA
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68E9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681519385;
	bh=KrpDHrj6i59tprav8aEm//+F38UpGP4HwepEuSCQ2K8=;
	h=To:Subject:From:Date:From;
	b=lJspqtCwpDLMU+IovrVfolF+rYIyuoKMMN4q4HM7Tx3czfuuCB7xY/Av0nTM5fhuZ
	 X6R04jyo9UFFldBxvLrUikBVFjrCnAPrkbz1QuvSwbbahIyhJVXQBBKu3i3DQSqB0K
	 WX2r7iE8MmeINdXHa8T2K8QGnrcwV2XxzRv9h1aRu2fWb2xR7c6HLjrbA95zLcrQyT
	 GYU11V2YbeRsetJcugD9qa/SuM8DneKBV7JPqOKK1ltb4KXdbD69V1bj4DajEXheSJ
	 rs/SgtORMkRaqfZ3t2CMLhxpja8GuEkkvpQGECarz09M7Cyq10DTCd4mCIQg1px/tY
	 GUMP+CBxmt7gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8C2C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168151938576.30888.5588679733629272748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60f677588e89f1067090d5975afb51f00fe5e7ab5e09d255f6a4033c90b91f7
Date: Sat, 15 Apr 2023 00:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681519385
