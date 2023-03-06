Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348D11361
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 06:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7999C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 06:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678085225;
	bh=DBNEcuBlITv8hUMFObOoDPfsJd7Qn/HiYEscZtQGZIw=;
	h=To:Subject:From:Date:From;
	b=NB7aI7Y9/la5+hpGEe7pHdOUrIybZ4mO4m+kOZkuDDKbMCuxs2JiW0gOu/97SXp+B
	 +ppZ1yxMmP5PFHyuyQg+SSNy0RtlY4nRERANF1u1tOghK5Ptgwt+ZUvNrSt7kIWVmC
	 F8f80sTJHqPZyvTyMUpKAzmQsGFeRMlrjSuww2nfM7+hM7UYqvFhrc2KT4mPfV/UEb
	 4AU+03drWHxrM+1T6p4J+lCyZgEzX8X6bp24hpHjLfU+AIzQX3wMY2biy64Gu3OR1R
	 3pJRvENBFuOODoLwmG30jK1fmviaLLMB4V1SfnskptLCDewyl2uKEu7nfmy6NkNdrr
	 iEBLRaPZzkxmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE760C678D4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 06:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167808522577.29478.1493663275858187777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3304a72544024d01c79163511af12f9aaf3254d90f117117ccb39561724a771
Date: Mon, 06 Mar 2023 06:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678085225
