Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25B3632
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D50FC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665109853;
	bh=daR7umcIHQqmHc+Ucjl2K44eKCGCVN3i67pGRfLE4FE=;
	h=To:Subject:From:Date:From;
	b=X8BzxeFwqBHdfI9t2xUpUGdLVefWkeAeK8OQdwYcc9mWAaAvHcs/8LWugy3m+n2Ib
	 QOV0lVf9ji9LSw7YNmSW8+nMHGYe6A36FRzXR4OqpEfMdoiS3KEE7x4xB90VD6R7go
	 3HhOwgpENoUs/xhkitKjBEThzjSPY5FJmz8zOWyb7kxmwRx0zSWKdieJntm360VcKK
	 vcxocoZCpwPwNvG0hQQj1Cy8gA+GkuHLMD2i080KY2UOh+6bjvNJq37698U41tdQK0
	 qf1oCR9X82sUUJhE/7+bQN45jC6AtIDesyrurwRi3Y85ifkUmQ75x2vijkFUAQdqv+
	 7LCDSVfkZ24vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61711C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166510985335.28190.2980970527293618178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9399546e7795ee488899bf8161f957d8e41788850d12e7a5769df3abca1b2dc3
Date: Fri, 07 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665109853
