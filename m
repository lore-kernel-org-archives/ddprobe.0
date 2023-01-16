Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC795ED8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96A62C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673833287;
	bh=YsEVLLaVvW3RtrLs2lai+rQnmddSpgb537URXN0xJnc=;
	h=To:Subject:From:Date:From;
	b=HHajvBYzqx2xXk2RX/zw71jJqj8H3DJCGob18jo1sOHbFxMJ7BdMbUIBlKN3RAYrr
	 IQ5Ff7dWrY1+Xv8p+ykl07Nv1rmG67A7abXhBmkdZBMA/fnc6EVDMNGnCgoYEAJCkn
	 82Lk+V4M14nMwYciy9gDrzwKeJBr4nTsbwVL7XNjmRhA+ZNoyS+Pd5eoY1iFk6K6sx
	 J65C1EtKWyUJknA65v6nN8zLgacOsvxaw0KFOrBs8MP585UhHElfWHVe5uvbGuk197
	 mqrRYY8yumc77kulsfcg9AmQKTyCqMrEmT3fI2dmj9ee6UbHUe1mKzW67eSQMsbrgY
	 CVPLKhg3my2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78800C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383328744.5092.17729311800181121720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4c3f12a612e502e9d96d2d87aa18345c097d43d452fc1bbdba94a87ae079b4
Date: Mon, 16 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673833287
