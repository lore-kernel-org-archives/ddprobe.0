Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33B7620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A969C433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661956253;
	bh=UCAMLFdsXoxMKiOVEOz2Js3lYiiBuxzgGrBcHcD+agA=;
	h=To:Subject:From:Date:From;
	b=SpZamQ6rawRvZL5LxPqrfOdzXQyCL8FZvbI/tbpxzqaGy3q0CvrqPIzSe4tz5MeEp
	 gBGoclGdPL1I7DAkgOoH3Wiu6dEqJEzD9cfzs2uuhUwLbv7ojuOS2LJm7pitmgDbZp
	 6YJ4Kb7KQWAUyoufeR0HLxHXNBoqq0BxcnxRs0h/UUduaegLRAMU4gpgfU7htYCVMO
	 r+PSjGal45zmRlmIiDHohwQRh3G8q5oVbTKGkuXvu5Gb72LvQ0ayEsMvWAvEhqh8lR
	 5KN1/X2tRl+sF9vC0g/3hat+NMe5ZOIUN1HF1DStu1v3BlTBrnCYSqcsPUc6V+NNZn
	 pcyPrHrwoDGlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5496BECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195625333.7058.17706768429939906296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b6af5e4ecb5b7891e1af2a0b664a9ae026fbee4a1393dee18ff0e391673d99
Date: Wed, 31 Aug 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661956253
