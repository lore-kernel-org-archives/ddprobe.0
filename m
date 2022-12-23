Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E447820E6
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8237DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671779487;
	bh=EvcBiWSF/HARtgnkV0b89NKZid353HBUT5yER2lth1A=;
	h=To:Subject:From:Date:From;
	b=r/tiLEb/af05bvbA7DdvP2rCpwzpvASr88XcKBnZUEljn+tDUgu5kkn1XmofOyiUt
	 lTxd7vzDt73FIlL2PCsWTqVS2qf1Gxei7ZVps8wj7ZWGkJ64Gsg/vqhH8g/1C2otxT
	 fjDXFqV+2eURsyK6f0pI0YwcunjsS7UTulpyJM/d/7ZuG9XHnYOd+H6nuD8gLb5mxU
	 MYosc3jkOzTntxdiASO7TIg+66E22zY2VzFOWVQz8KiqjR/UhP92f2AOd1SIOtyRkW
	 UN7TCX7FvRDtU9faK8vMcDLzReoQ5Fnpn4S1mHrvfkd38C2AxVVVGk9iKtUeltaaeV
	 x8c2Ie/snfM7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62028C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177948739.20593.3678233120921009200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cae551049cd642c220a489179abcbabd80eb42507ce2bbd06d40ee9c34da1fc
Date: Fri, 23 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671779487
