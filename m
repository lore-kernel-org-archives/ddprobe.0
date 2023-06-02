Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7855633302
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE18CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685731026;
	bh=moNn8TKmKYwT4i2Yo6/8xzP5aHXaiYTeC60bgJI5spQ=;
	h=To:Subject:From:Date:From;
	b=SC3Zi2IAUqmoIZFxrvQXmZQ2tOlATV/+LQb0zK6ThiLaE6l1VO0xu6MQhB1csaTsP
	 uV8UOCP2JBy9gOpcYUsVhuSVBM5Xsq6hoMt0ZI8MW+KUrLHr9x7dR2hvJNO3EghPeO
	 7687whVk/ybaTZG9Nq0vHIDPAkW+auWE0ELeYG7UeRd/eb9mi7mICCx0MkoPczDMCy
	 zfML/06kg+RVEsj+npXpBkAO09ZlJ9KbL4gqoY2PMAm/Do8+r1XGHyYXYKT22Cucf1
	 w+86Q/IVvZeX1wXZ2DiJeMHfyBA/L8MlSquxcBFWVwjyjsSZ7omzYM7sUQ41DnooFX
	 9rN2/9UZ49f9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B42C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 18:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168573102580.3622.8111869782031158175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2194299c8ccc49050416166091b200e3359872572ef92a9b336cc353a81072
Date: Fri, 02 Jun 2023 18:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685731025
