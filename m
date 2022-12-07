Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8AE361
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8DDC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670391054;
	bh=ajhWjtdYb1AIcVoaGPupBctYkzX3BSNCtyKvZDvBtMU=;
	h=To:Subject:From:Date:From;
	b=uRT1X4wuJrewMYveRCQ/VZUb9V59GfGONycYXCztfI+kSzRrm9QlSrQudn6/i+FX8
	 Eg+MAJcQESh0jbCnFcddCqyA5ENdzw6K4ThbAGyy6SPI9DtKjhJ8H/vRwT+hE+yt/N
	 FudsKCofpLs1/T8WtfRNuoJRijB9FSoo/n1RQiagmkxUWYtbgkE5PLHna7LfCwq+wZ
	 GeKuJ3ma7K9gnLdlf9eMz1ygw3PIrBiIyIxuTV8fxXVwuK6ASizA9pedM8rQ1hk/8R
	 Ng1lR2FZqsStbRRV5csQdE0M0ZTtNTG16+eUZBYj3tlg5qc9Ge15tEHXh0GyM7engv
	 Lu4ghph0coXTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC43C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039105437.10567.16646616704465671449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75c62e051311495327edafba55333a55d0887c492e81c19f3ab2fbbff2b32e1
Date: Wed, 07 Dec 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670391054
