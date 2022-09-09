Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD261808
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6962DC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662724253;
	bh=n33stmMAZsvaLjZ3TLbX0qQEz3lBMFIMlGrP+R2gzp4=;
	h=To:Subject:From:Date:From;
	b=JxeC+pBCfz6EwKY1nYTYW6DEDuotvYvH8vvFv2Xqmbw0u5o7SsFMeuqwnSwJCuVal
	 Jace0AiQaetIWGplv0LvmpRqF+WwBVyAAd+Wxb7NlrGcsNNj4JZWauXZO+QBAroM16
	 2xPQW6Zq9ZexhZEWLoh3mRfruF2a8rgARBmnp1BYA5xao4zERe9qKBwPrJ4XnJTzej
	 F7FgKg/n44i4Oo7quyynnFfCg8uwGIYkFbTIHSdyBhUue9T2vaKjr2BW1XAO13QLxZ
	 xNh7oQVF3JDIKRX5uREb4AmXk11Pzd7Ek4NgOfsh+MfU4b9uBnUi8CP+HeC2smDLv6
	 NaVNREg4V0RSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53697ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272425333.19552.6509444492643165518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d600e0cd112838cfefbce4df2e1b248d37f2ebd4776a883ebdbfad6c16a1278d
Date: Fri, 09 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662724253
