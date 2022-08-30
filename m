Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EAD2F46
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C54BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661861453;
	bh=luA8pZ8BNsCqCknUXJ582K1DAZO/d6mGs9N15l25+oQ=;
	h=To:Subject:From:Date:From;
	b=qOiyaDNgk6qJrK1gdZbmtP9e3NmZ+LQhDuTB60GSF4XuW7WB1Lr0xyZnKX/VecI++
	 8/fbiqdYn268MlmGbo/71+xJqMAtn38JPE9vYCdg/ALh5B5K/yDY+d+/X88j1evPSZ
	 pN6yJT6+0MRVdIVQitt1m/z01XfSaN9l31cXhyUhk+ue+YC6P6ukuz21TPmrgW5izL
	 1WOTm7+JBBCaezvaOgxzjLdEx0R2b9bup3JEdGj+MTc6foKGrwKZ2RAatYtdjVMuLQ
	 T+5dmflwM1/ICySgdOO6YrRWgqx2w1iBJApfsL0kUcTaGF+03eTYIu941F7KWraloN
	 QcYSza9g6AWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B6DECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186145334.24169.16460287303526133624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd6add73f1b3c1c9ea0350956c9f6109de2a52d44d87f0a7ae55fcd04d69752
Date: Tue, 30 Aug 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661861453
