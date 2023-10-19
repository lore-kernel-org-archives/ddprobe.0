Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62853171B3
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jzs4lCzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38C4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697707092;
	bh=iEyor6O6ltFDMdE2o5U4hJZ1RJVZR6bhX6YbxVkoYfw=;
	h=To:Subject:From:Date:From;
	b=Jzs4lCzhdaH61qHRt7r5LaKtcA48wgk+uy2qfMzWtqrY9q84hwRF2mCNOabLSUmhj
	 bJr7E8h4vYgvhANiiWVuR7Pf+RxviyaLvN2LkY8zEDd5GFplC1I+TVRPLnWs+2MLiJ
	 vOcv2c9RFspws1N4al6VutJec2/kXzsxcJ3R0b8VHOiEJFHy2atL+WspN4EuHVDhTe
	 h6xW+y2/EbiITsXPqkY1MkPryG5EjnyLb5BB04Hysg3Hc3EZTc9uVfyQBZy8vTnlY2
	 AeRqbSrI4nXJegsW47u4V7L58PjN1tolxbG6u7+eJij7epEq6z5nxUO6QIGQuRmICx
	 1WZyUdxMkj8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CDDCDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:18:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169770709280.6329.10903415962695985956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80492c08deca9a336bb78867488f2f053df4a769838f450e1c906345121db269
Date: Thu, 19 Oct 2023 09:18:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697707092
