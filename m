Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D477E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A282C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669179054;
	bh=97ucUuis7axgts7oJEHT0ZVU3m3w+Xvbg9hfFoBBPGo=;
	h=To:Subject:From:Date:From;
	b=alJi4ej106Qh2Jwwsj6ukePuFeDeoG9Jtw6l1cZwEKGqS8OSSOix9jdvWWwR+RlSz
	 Yeq6q0RqR+3Pdkbv66954VtaJQls9hTnWeVNduDyQo5Tuaz0o2ItX74l9vzFAsAyDd
	 00irULoDeVPwv/jQjXCtjZq4YuH+LxzYpcxrEoxq2rnvicmzf9AWncgKlTld5Ols0k
	 DYmCfW0Vz9v+YscHZBWOJMz3tFjy65WOjQ7oCQpG9RnP0jWKqaQhuAtJLTgAcB0dCi
	 8oW+KAUC9BeLWZO9gFKtslETKcp3zlBUUNgUWII8cCcaO/jHBZNsrIDBUhVBvNPGWI
	 aVbBzO+Q62RTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E64AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917905431.30813.13594740872581703023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f4c2b678424ce9e4251f3f0eea3fd9013cca3130b5c7919191c242e3b43812
Date: Wed, 23 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669179054
