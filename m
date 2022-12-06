Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88DD27722
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AAA4C433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670349054;
	bh=ZmUjk/kmZjxh+rqV1alwea4oSggIiNTa+yPyfGSFT6U=;
	h=To:Subject:From:Date:From;
	b=nutMyFuIJ1kipwOLSgSfGer8//lSurld3lKWLZjaL47o0Fw44pxTg7KWrlL+yS/Pg
	 aPOA8/B2GBoH6aV7hctiwr93nurqkYOJyHtVJ1oZ1R/j8qZLb1kY64L/4RmuIRhp4a
	 jCcxzHpjz09iU+vhtuVK+466qHo+q2P326abcJPQAb7wZ99LdX7jgA087hCSJaTGaF
	 8lg+WiTPt5mVxswFsyw08CRfX+ujkhrRvXt0FUifCOPQGVfGupMXUhkCW1hK2B9Xy/
	 vSfKuVCjkg/fN9lWkA4NX1QBIw+He1dcDNVw6ENVa/WLLVxB0BHcxnhG6avhs/wpgw
	 6aFizfZg0NG5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532D6C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034905432.6864.13363508713029045155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d56a354314e0a115193b355a12910b2d0ad5ada87d7c0d4bbeb4ac1d7b4b9a
Date: Tue, 06 Dec 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670349054
