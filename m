Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92FB4C62
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C46C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662744653;
	bh=n4RKFu7KdtB9bu5vTb1SQ0n+3SSEswVbX7behYmT5as=;
	h=To:Subject:From:Date:From;
	b=NOAdENTnDsFRHxFaQYXRId7jTf6F7EQRr3CFW7qe+99YM+AnMN/U6UGuoJZ0cAOsN
	 Kwu8NIeSrrp6F2PTSbM/DVZSkjEXd/DydK+g8lRdBO3dzksv/YYuBqxsfETIMEg5CL
	 3fiFHiZ9rckKUmeP/bXhWaNqQ0t6DGFYd4g6UfAyN77LvhU/0ihOjDGlR1Cx/3a4Sk
	 dw8poflBy5+5887fKYLdw0PgCLlLygimIFMSqa0prVKpoT4nLK3Mvbx9VEiFFPSEb5
	 jJ5iar3JFVJ7pIHt275lpkZoNJl3qob4WP1ZVO4coz4rvHysOq5Pfn8Ehwjpp49z0d
	 KMNmfFPSXODtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBD2ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274465336.32666.7574553135774255991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2628f8959f4631d920e488e7cae128ac1cefe9ce65cea9821d79dde2390b38a1
Date: Fri, 09 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662744653
