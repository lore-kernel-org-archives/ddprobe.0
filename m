Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E8F7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D7ECC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662531653;
	bh=1xI1Ck5pdfClKAEHEWRI8Mu1wo6HwJFyn9le+r7QJQ8=;
	h=To:Subject:From:Date:From;
	b=Vg712MlIs1Ob3M2328IjY8OKfrTt7TJ2k9kmMu+Di9Tf2Yv2nnP1U4UcLcpXNiict
	 MqLvhieyzkcGsbnT8TX+JJvr4ziCWe/ul40mySyQJtqcI8ugEAHRUKs8Cg7CXVtL2u
	 sOSMabTe9kT56gB2wiXIBZxtXw7wioK/1j12artK4vjDFRq0PBjbfNYjN/W79EVZUf
	 1y5gvPe4vWwdaY4lFam15I4t75skeXtMd/5Sqfpz0YFd0h3CJcf08ZQD1LvYjxjRHS
	 cxgqU34GzHF1HeXyjH/C8ku1zfPsjZyAClMINA+DiCl9w/5kFi1jbdWbShzCIFL3O1
	 7yREPFE2D/Efw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5484DECAAD3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253165333.17652.8199728576974429070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c88b9999d9690ee7ef865ebfd4ce5570f3bd6b150c963be703c8ad7f479fb0d
Date: Wed, 07 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662531653
