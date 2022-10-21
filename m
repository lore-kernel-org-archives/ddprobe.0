Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59F86102
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7E9C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666372253;
	bh=8ZRhJXAQzeDe+WiU8AAlYvaGnxrV7PzdWVQAkRV8AqM=;
	h=To:Subject:From:Date:From;
	b=pZI9EX0fdJJVYSl8Q9r8uiOx6L5PmrG8v6MAoP6lQ2Sfya0Zpp2B5ltHxeB+/rwYu
	 +nQ8dl9fOaLBCSLh8eU0CiLLMgB6/+Zsxj8fnc4MsjoAc4Xv8ISWCbkXTuSorjnPR2
	 g31TiYyd0mcgIovPHokoDLScOVAHWQlrL9f3Kp1hR147yBzyZ073nP/Pyf/Vyetlmp
	 k9sjmdmfimTkT2nFDGllmYoiw87r3fRebkCW5nmbObtbFH2JgMCDVyfgEn7yIPIxQk
	 tDRQqQ4RH5y7mVdmB3AR83qCLwVSckyBBSsvqKueLUA7d7xFxwtZhbhAidxlbg4Kkz
	 6h0DYRJMMazpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513C0C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637225332.21139.10040493100677734414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4471e9e2e21c0367b43eea11b593fcae797e78d2fb1b738d4af8f50ab2609e98
Date: Fri, 21 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666372253
