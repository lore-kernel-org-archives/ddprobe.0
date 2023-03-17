Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4676AAD
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68F0C4339B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679060465;
	bh=QbTIFzmnvHm0ngxixNRfMJju1xSZI3uPsxxu9BxD2VE=;
	h=To:Subject:From:Date:From;
	b=fFH6gs5gOSpf5FFqPyc71o7AXaP424YdLBBHnlAjQz06rlfdECGJmA+OY/lYOYZsm
	 feJ8Pqgt8KTssFwiCnp1IpHCFbIrWoT04ZjDJrV0Fgh8IYhPCsdZhh8bVXy1kHsfCb
	 daKYYhuF8zXY8cePhcKNnr/HFQ6gcxG0Zvp/BlGJOsW7UAxmMz5yLro3AZRuezRvrF
	 LHz/WMVBxAJJhPqi8xTL+HvDHpyMaQx9jo4vHhzRQ+IXTLh/ddxvAPvee2oLcRXB5M
	 GdguPNTKUjx2sEsCpIIXIWNGYjKxZFYPutnfdtfN78unh0tCYUz12gxCqSJ2RQNRvm
	 /RUTtoqlrIEPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1FEC74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167906046576.8640.1947740715546785567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2aa593b7336bb297c016cf189a3380b42986cba758a30d4154bf4fcf9239154
Date: Fri, 17 Mar 2023 13:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679060465
