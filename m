Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057031849
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmqtmB/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C66BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702782496;
	bh=7Cox09/0wtjOYesoAz86mlA6mzMNN0I+H1bj4FmpuU0=;
	h=To:Subject:From:Date:From;
	b=DmqtmB/9uuuz/Zc5PjgV4G0FkZwlntHLGmHQlNXyQo4mxZ612m2dDRzgvIP/K/S4r
	 eUzGorDg0DDdS+yZxi/JY5CGWYJ/uMJTVwVgfRw39oD9qLDH9qHvCYgu20P2ZAOhDf
	 XodCMIBfXCw3BUVqbsUFNy8vz0sysY1EX+Gz76rC6ZV2RcAXbRw8zHkuUpfnH5CFuZ
	 0YUhoELkknaQ6JtueAS7uqaT+7efyQ4vhqt6LKyYZVJNrDeADJsEJnC74nWYvkyM8w
	 44MqlgEZNwYaA1UOrLDM4Awi4zRwTxo7BkKtQr61eQBoMlmZTYZ1A7kKdpxg3MFmRc
	 EbwIpGwi0ONCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65644C41535
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170278249638.17394.13899198977540554244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acd6944b2590bfb76b8c72bea6b62edcde614065482fa443b39b0fcf53bd99d
Date: Sun, 17 Dec 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702782496
