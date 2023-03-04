Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B4F7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 14:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2D88C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 14:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677941826;
	bh=eaUzLePjrh+j9A6vYGXfx1F/qlg+cwNOfn+elw29C1s=;
	h=To:Subject:From:Date:From;
	b=b6+FnIBg/0Bw1vGNOJhNFVm5IFOwpZWq+hbtBuQHfUdgY9R3ENIPLiDSETD717QmD
	 P7og1hwh1MSABeeDSQBnKrnd8EcuFMVwxg/o5i2xLOBUpBc7uyn2+90iM70JkMo2dA
	 PH+WRHjl/JcYC1P6zB7PzX/Fj6kcyIyuI+7eofrp6qxe6tmHducnAI6tepoLX+75LV
	 ZPu1mjHm8ikMn7ETYiQJB7aKWZd6hvEgXorGWiJimlBznM+AIP32Mv7jt7p4Nygdu0
	 xhnyqeW1O68JqAbMeY9bfaoZNRN6CSTgkai8DEs5I+gmYBnxSjt4YdFDVxQaZrEM7h
	 e6hD5+8Z6bEuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA71EC64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 14:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167794182578.8492.11127500110877367784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13125061cfd250b16ca2c0d30deccb5ee81b366e60fe0539967360e221ccc5a2
Date: Sat, 04 Mar 2023 14:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677941825
