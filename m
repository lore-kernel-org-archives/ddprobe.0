Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60B1370
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDDDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671258687;
	bh=4Z6UvJTSDKKWaPuY0skKmYD8zWggwrpKAs2UPqgp7IY=;
	h=To:Subject:From:Date:From;
	b=tYWj+dTwW/SMFqL+IPLtaAAQgU0oyNaecZRr0TzPmSl65id75LIFJLvWuY7vEdwCg
	 ZFPdxUMbriMF/o9U5fm+Rd7ENv1Fc4wcnJmkVv/yqc19EKf74iBpVBjJR09mCHn4mt
	 lvr5xiq9RjoNoHfV5Hj6jt12MdABLyJ1fi073nKwhupKYVfxnUOrwHx9/dFYXekSK6
	 ryy+NFybrokseQ4GZDQ5qtQhKUmFuPBKKSXvnfbkbr1F5H6mjGnyiM9LTNCbjPWHs9
	 mOuzGwt1heSkX3ud+jBdaJhCXl01O5PsBs3iElW2DON6DadAnAOVVL7wKttw+jpb9s
	 PR2Z8QAZx74yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EE1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167125868739.14427.15628949026429377280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce2ccf278e30fa1ee6977bdeb9c3a721c2d3352d6d570ccb71e18c2ee10e866
Date: Sat, 17 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671258687
