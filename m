Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6C58F41
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D36AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665467453;
	bh=E1XnVWmZQMNKXIFpV1T8qu1Xrd1v+JLCsLG7vWPRSr4=;
	h=To:Subject:From:Date:From;
	b=UtKjR/eBrpuaq6YGddqkJcYNxxdt6MassyI+IyG6pUiUT8fofDbIqr6G9q3YLbdEf
	 YkUVm/d+SwJJzcWpXBRtjCgJsbXmfxkWZ56hGy+c1SbnB6VyWO2NGTXBaz+1zwjxxI
	 cM+sEcajsbKW4xRxgdvqRAc+jCKFnEhHR2SBaP+Hx4dd/ezqryxNXaYKre2JNVq0PN
	 NQTGzCI3z9OGzmYcU1MmQMIpt8fAYmRGNdojNkBTFtaQzDZThQvNfc4mrDkPq7Wlj1
	 hcNB2XgWR5Q3YJfW5fhcZmuXnjM6csq5abLT/t7PVOrvk/xFCkUhkc+O6yTuxMxDhe
	 hyzRPso2TdNdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF1AC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546745331.29856.7940242878546307986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9807195d42f7f2ee90dd1e2aa2acf32e126ca612908c16ebcb1026ae6e6af6c
Date: Tue, 11 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665467453
