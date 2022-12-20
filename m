Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D79210C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E5B1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671540687;
	bh=w7pKUd0zBs+73V1Q8Bb+Oa2QN9gFLn283ENMeUDrEic=;
	h=To:Subject:From:Date:From;
	b=Mzb3kgNykC4coYaMDGmvSB4OK7NTYct0BW9w8M6CcJYfxjfE9ozbRvZnXr/5bNGsB
	 mywZnYnlu4JYW5cNUE/cw6m3+WvSZtrHYfKapSEXK7LlI5YVJZU11zXQhwGDbOGCtF
	 ubvoGOlbbdS58mDgr1FddjZ15GVkH3cwAXZbvGoEwYaZx5KOA+EegJyhr/Wj4lVlCX
	 3R4Iuo+1eJBW0fEMOpc++DCzlrTIweUoaqhoT7aLGayVnA1eLWzVSvG5rNe22LbIpZ
	 MrQ8ksApYqIxMFnV2Ce5DV8N+atpIgUCRvV3vZB9wiavZti7NS6c6NMMRMghTKaBjo
	 BzvxywsAUJcIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68EDDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154068741.27026.55557631427628986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800a960aa65eb745994b4e92b3dcd001b9b9248c46ee53fa4b02fc1bca64c98a
Date: Tue, 20 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671540687
