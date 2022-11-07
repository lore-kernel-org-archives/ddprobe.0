Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE79315A9
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8360DC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667790654;
	bh=jjyoO4DgTwaM6Dz0g7NTQDziw+Z0zwOpRrH/m14sra4=;
	h=To:Subject:From:Date:From;
	b=bXo1IsSEnEiKxJt5wXdD8Mc46Kl6otOJzfzAAUHOBPbefQlw143Yn1ySrRPnW4sOd
	 BDz4zsybr0cInKLW+vO6kui6ZPPUAts6lXXkA8DH/VjdTx15npp4DoyR1IdgOphnag
	 LfnvcO8fpU4O7WOsDhduS26pqbPm5fI4/CPk4O5kUvRtENX8EOyL7ov8nTRv/VNy67
	 38CFlMTACZymXr1FTKeYQtyNvq8/tnBz1y6uVqLpgM6YWy5tHiTGYSC+lxumBfW400
	 f9qmNuaSxlK7v/ZihYD7iPVCiRUxDqPcV0faQRM8Qf5DIPxzw3q/+LMwsLDD0P1cLN
	 brEgouHLbxgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6337BC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166779065439.21104.5308364345542851706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b2934d50b38dae634a0f681d01c5503f9783873cf01d9fbb133ee5b9cc8a34
Date: Mon, 07 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667790654
