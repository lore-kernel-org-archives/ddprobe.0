Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7B93C37
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDDAC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664894453;
	bh=fnYN6MieRwv/h9F0Dw4fjbPIJWA6EAXB2O0wrUqnOzw=;
	h=To:Subject:From:Date:From;
	b=PacWGxSKHdgYEVz2iyN+DbhbODLac7+VguYPcNVtLISR4creSid4K6XDd80MxAVhN
	 14hoYFa9IBqp0iVaDU89UEmyJmxlfnN7e3s0I2HA2sSnHhA0BpJoyWTgwqokmSBpCY
	 ZGAF7wQdD8wI1YR/u5tuw/G9/50rjchhz7SLIIZH7Tywe8ulIxMjM9ANFweD9GdvBF
	 O694e1vEZPwPcteEJDVbmevxJWP8XWF1AT2GjnL6dxpjd+fp2iqUcfPBOHNoQhxhh3
	 iG/jlHSTqn6Rh1R2KN/ZpVUM7KkLR7Rd+D0FaM3reuEyRbQHdOQ2AVeqbCjqOAWyKS
	 Bed8hapZi4S0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58879C43217
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166489445335.12361.12146321201233801711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21803f831ee6714c71ffc36a0edd28abb4aa76b59ea0ebea37d397ce896b1513
Date: Tue, 04 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664894453
