Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491D0171B4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ygj4C0Xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C7C433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704256696;
	bh=1Djl4efVwCBStj3ubG1IjTpaO3hg5E/oWmxYkPf+muY=;
	h=To:Subject:From:Date:From;
	b=Ygj4C0XsO29TDiTZCj+Ao0zJgh9T/8kTgUX8RJsecMZHXyDxlwpO/m+wxqjPoVK2R
	 qxcSfi82eKS4mLgEBiSN2dsxtvhe0XO4vdgR59hp76NBHqsD7BA56vzXVXBuVMaBdH
	 tfgbbyKLHbUXv1VUmL/+nEQBtaTiWdq2WNB4m0kLm2N0cJeXCCAYmP4GJCf5aU3kFc
	 5dWJ+QED2kvd35fqo0Ko4qcsWzBKp1kIS+jcUm7p9uP7BhDBEY1x9sIb6nE1tkg1pr
	 hQxcgaNxhxdHfB3WiymezoiC83Rg35SFfJvu/ayv8/x1tGE12s5IyYcUgfa3kBnk0S
	 BISTg06eDA8QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C3F5C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170425669643.28828.13118524662058020868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeddf9446265617d5b39c057a9b6172a895db32e12bc1cc9db694e8c32935c95
Date: Wed, 03 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704256696
