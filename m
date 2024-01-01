Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E19E54D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/hyIT56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 854C5C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704145696;
	bh=8b743m64KKBoyVwC5OrDMFUaTNnjlMYkoglfFBNGBYk=;
	h=To:Subject:From:Date:From;
	b=X/hyIT56RC2gfxOA10nkEPGhlI1gEqUopPMTQbfyCvJoDMIjBA9UG7d0rA61W84Ky
	 Vej625zKldMBA4S9UmGKSax4Jo7aWA2Z+BNXzHS+cmP9BLENSnS7Dnj67cxiPGyw+Y
	 LEpUuzYlVUdgOM3fWIwa0X8US2tZym8iubpJnw324RNGB+lULNF+x437uavbUiUZ8a
	 czU+04l/dE5URFvr0GK/+8A343fXKZ3zER9eOhPj+pxWMQX9rU53yQkn9gjarmX9Sd
	 VUeEPWPbdrWVYPxZm6sE0LbWZ6szB4EpGjZnswcNzDqVZG5NnpHsAGGHurH/YBrhBD
	 VuQNh9oWsBs9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6436FC47073
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170414569638.3073.6972695915667734597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de56d85a8958acf150868d6a809ddb18b704ad481404a3a786419d9181bb00f6
Date: Mon, 01 Jan 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704145696
