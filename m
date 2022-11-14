Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD596748D
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A05AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668444654;
	bh=EfzLvcph5M37ITcISyjUEQ0WhM/aVV6whrPO+mHV1wk=;
	h=To:Subject:From:Date:From;
	b=B1wFyzqCZ8s/Ty5/ZTBfvDoFfkse5dAl9e8BuggLKro/LqcqX3AblWxcHunAsjsYR
	 mEe0mMmV7zs9SkdENxKu5uz2yM9Ah/UOKCb5wWlm7pZ0PyUS4439xOIww6x50aPJu2
	 GYlYJBSBdaBfIiCtAK2Iyqr8vKZOmu5LUm77x1V6aCmYSFnq6LRCVK2yUVSyIz0p0Y
	 CveYpNRjZT+CQCkit7dz6uoUpOCK/gdWFTh+5+PfIc/AgrY3ka5z2iXaUFt+kNdNzE
	 48H+RLvH0CV14Lyt9DufBJ3qiIrrL78dTQi8TmMJJVSEP6ZhTEZLSpaECxc6MUMSk8
	 Y93z/JoHNnBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C68FC4321E
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166844465437.22805.8748984126768965724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29019e258c7b8853147e5f2fc9d25d637316f483b099b735e166bb88a427af32
Date: Mon, 14 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668444654
