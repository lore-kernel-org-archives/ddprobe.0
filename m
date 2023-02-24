Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A180524F
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 12:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26ABDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 12:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677240906;
	bh=lypr9ygAeuDi0ggP3Ymvxt4ADxIGD6qQfwuaE22Q1BA=;
	h=To:Subject:From:Date:From;
	b=TjhiSt2iSaDdLVCoQmqCtB391LGevu3V0ze/xRFCJbSUB4Ivij1lC9OpUTE9Ejk+B
	 XLpRubgZLepeu7Re2Mgh4MYPB1mLv+4IqeOWJE95JjRpilMCCcN0aFL1nIzcdGuCW3
	 i15Xq6DI1aMN3IPUbzqGG5a4Iky258zHnKgzO+vZ/NK99YBPqUTbK6xCGUNHPP2P6X
	 XecoSI1Q1VtBi6XMpa9jRd3qn4C1Mc7SF5FnpwyyTqA66Zy3U8IhbS63m+e/DkMV5G
	 ugJ+pEoR7jEUKQWwp41q1zuJIA3ieeWU+A7aIxlPb3R/DEh2bG/CkmgRwgyY3HHN6d
	 Kk2s+EL1s29QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF76EC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 12:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167724090587.14092.10662380232282573881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8634cd9702ef45ee87c9e12eedffe40cae76773c6d67f9d5422e5b91b9d9c3
Date: Fri, 24 Feb 2023 12:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677240905
