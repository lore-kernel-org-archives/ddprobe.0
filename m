Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF59B7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7288EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663639253;
	bh=Sh90FPUOoo6fr0vF8ugvvjq2jiios34Mbg4A70JGWUk=;
	h=To:Subject:From:Date:From;
	b=M58UuGK3/npqmd20PHlKMje71Opzr6nffRnH2zRVpG0ODSp1ii2kqomR0wJxd5nzX
	 brFLixuiU9nLYzkr4uSm8pSiTUUiMyTnegpe+KWhJyHTzF5fCyea17a5ZhNaj+FfOx
	 3/rSiCoWDpp8M6S9g1K23/SB84YZAexAQXgr4aC8VweKoqVzBWB0X+LEbvBFbXUcV7
	 6hSE+qH0QSte46gl5K5TGabqUjfASs5UVtP/q5qiLb7fDTEKYKTwnSc/wqabXIWcQQ
	 rUgmFR5aLFXQ4Oshvz6nDvUtyoB0PcCgTVZub6bmDfPoc7IEvqo502XgO6R+G7hzA/
	 rQMtY2l9UklMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565DAC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363925334.914.2951381831568722114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b376790ca4159677806ff36c16f732167613f0f1c47f6a9d68480be2f9993e15
Date: Tue, 20 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663639253
