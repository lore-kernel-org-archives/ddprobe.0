Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6C815A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B87C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662343854;
	bh=lpUj5Hl1q3AYJ5kswt+QofPliw9fU+APR+R8rifuiXA=;
	h=To:Subject:From:Date:From;
	b=iDxGVPVNxdUEUDuDO/L2E8WQRMUjOtJrpTocJ6ihTTHrZgjHG1Q6jGyLzJkfVLtIA
	 EIKRcjgitjnfFGE09djJ9zPEXP6aC3Xvb12ANtbIJaSIsaWK+AOpzuZKdUkSDPzua6
	 gIK0G/FN3aFO1K+H+qhIcRZC1PLwqog/1LkapKExTFzEu1gDl7IXO/RtKi2InHN/L+
	 rPDZDv/3506m0Nm562poQbI4jBbMGSSiibXCKzMgGSxRmPsFy+44kNm6L+JM1O2ldn
	 WQuJWc0c2pI8X/+bch86ANRv+QPRkwb2feS2Vc8tF9aV1xtRiqs3d0q2LEH4Wwpakp
	 nu6gwK6cIEbIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C6AC6FA82
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234385333.4287.659772717086785619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c6adfb91be7c5388043017d33bd0d69ee2d9b2ce112ac95e9be30d08c15e06
Date: Mon, 05 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662343853
