Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57582580
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7036AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661955053;
	bh=QoYTUOASpRLg0GkABryHtCVwlWWzjaRaL6r+UJH0cpw=;
	h=To:Subject:From:Date:From;
	b=ngiCsKMB3BztH/DUm2gVy7jmE+NFW65FjICAqlrvlY9qIfbBN2IC2/V8IvaSZnmQ3
	 SHPRIaRWce47CeGCQto9LtwOLYML6pULDrwCpIlO9RfiY+LV6l2m2Wkejd4/wPvNvE
	 JGjOdYXiRPXeW6CYlUtEgZOI2BjjJ7WyhibQ3o8d7VtiaiwFeILQkWJvRQC/AEGTNS
	 B19zrdRM63vG0+H/9owWKmPJpwkUKRvJBZOyQljJNFPiNIqJhmFRYkkJMB04p+ieo2
	 5EQzn4O0gMyKpYNn7Nd0GE0XcNcQhhEjm6eo1A/kprDvRAmUuHHSHSCPUXcMhkFaxQ
	 8VM1LoPfYnLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57395ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195505334.16788.14602910481221453329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dba724cde5f54b21430db6f6f8b9f33368ba17f11b465dc383ddd910ecc338
Date: Wed, 31 Aug 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661955053
