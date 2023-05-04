Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC36161
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 00:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E58F1C433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 00:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683159065;
	bh=aeVoMSKdDXue0rriD+7ghTMxpGkJkYPmama36NXj5h0=;
	h=To:Subject:From:Date:From;
	b=tF8z3yeWC/uBlaMKdPGiVXzFOtiJ4sRei9q5Bzz4S0/Na7fcYr83L8K2QYW0ZAMf8
	 pybNyAcXH9SRuBtQsG3CYoAPgr4/1oMDROdYvFiqi4Cun5SgR3S4N/icW4bFf2NhVS
	 1gt56QZlGupEfPHWybbxWWaQ8CgQwaHES+c1GeQSR3hyVXoDkh5Hmy/6eAmzXdEz6q
	 AARzHHhLZZx5JjOgrsCBoMMOxXD+uDvxU75kfBNflDW/O+KT17YXGpwetqeqwH+g/2
	 ACh1CBC3PWqSGihxkqNmNrswEtuir9TQF5gEO1hUvFe65ARX5GtkpihEMraoln3/m2
	 OobZOHEtXcZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87CCC77B78
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 00:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168315906581.21922.16092809259935862858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6284c367c62b3be3c8b2425d7a4ae81e023bfe534023bd979d3b6644acc099c7
Date: Thu, 04 May 2023 00:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683159065
