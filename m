Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A72517747
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D890BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687357388;
	bh=HQGkkQ5nT13HrwmJzWxZxaXn1twa7CsHEEYaivBJQSg=;
	h=To:Subject:From:Date:From;
	b=Scw/faxkUV38GBpVVULMF20qw9vo34Ah+HLY8OQf0UnjS+RxZiSESNW6LPecExFq2
	 2gmJAYJLrcRHYM1a8vUNM5Z1j/u6rbdgrlTI+hAJ4H37vl3v+9uTltvKS4UfC51tA4
	 e9s7fXdlC8beLs7wqENXro/oyf5vsS7508k/B1pY3py/iej68uq7cLbR6D3yQmY8hd
	 A+ews0xMDeb2avUkot5NW7mfpLJDXjThG9AIxAtwAXcdf7Ss7m0c94rsLUaEYCC3m3
	 sfeZJL8Lthue673h8X0/xOKI/xQCgGR9JfCPEfeDf1dNMjxfZeE9NfRK7JE1VvKZv0
	 8zQbqbZjJqOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF4EEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168735738875.14353.17586365197218348069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8bf3c371ed1d7688d117a6b30e065a681d15eb89a364b6e32feb692c17a68b
Date: Wed, 21 Jun 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687357388
