Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8200B17E0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 05:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F73C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687412588;
	bh=LkOEr19qV4vTLGn7tOGnaajJkJoEVwQTnQ/W5zxG/24=;
	h=To:Subject:From:Date:From;
	b=Gr6+RNRPRL7LaD6gHNy7v72DvpydpTKVGAERFKJs4vW0VBwUUYZzTz5rrY7BnYiDf
	 zIuSSnn+IWebCA3uYkQS9rFusBvn/tivsI6HI0TpEH1lJ1XOW+mUPasAJBi3fbJ2Ea
	 vHEV7aF3ewHr1paU94jInlVdjLyd1fcLtC9Dc7e+Jt097eu0q787b5kjIJSXm6Fi16
	 VYA3cviiyP2miAZrReaUwxngOklDJ22SB7iZCrZqIiSO2/ullL4zrvRmKp//mefeFb
	 d2q3S9dWfS49N4QEZE8HdP52ufjeQ5qNUw6ouIYiCjmeDh4ukRO3fNP/e03IZkdZoK
	 nSDud3XqsHuLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC21EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168741258868.15940.11229958805517743804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cada9352d3661c05477f1839a56cead509e903ac83a06436b2a8450276d2b8
Date: Thu, 22 Jun 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687412588
