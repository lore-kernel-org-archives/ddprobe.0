Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB00A15A4
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3D3C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670128254;
	bh=ljDLl1S7N7yQLBdnzWRB82JR9z5M2oZplLPGt1VtgYY=;
	h=To:Subject:From:Date:From;
	b=lPXH1p4m2t/Go7bizIR0KDZvOwzbc0nnFMrdqye7TO00C33xYSPXdXSAhEaxlpyG0
	 PX1LEnB9D7F/HDOXW8cLyICSce8nnRVU8HzUUWw7ykBtSqUCiWjI1yEU3fR7/+8fV0
	 3qtmVOPTfZgUSuvuWlE7pppT9tsbPEbl+L/ovsjyc5VU6JfSj6v5lvNReMeEgnnOCj
	 FyYtKlsM6nmm/MohE8Fb2Filv3+eCJSknEGRLcMI7vtzADkYMuYfVe0BHUfDPo9mN/
	 d0MOYryahVezFtfnpaPx3bLLRRhwcE6E6ZVcGhr0/vIAgDnRZ8Tx0OxeLcS0LS50Xt
	 mEDHEGymzsxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E91AC4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012825435.27997.14924339112287364531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325fab5019ae9dbeddd1b522e052af49f330d49dfc2c47d9901ed7a75a11c3a9
Date: Sun, 04 Dec 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670128254
