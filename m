Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A2D1102
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 03:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78696C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 03:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661398252;
	bh=l/3nS0mznquJa7AQnzyEU+Qk0pwARU79i6bFy9l8UV4=;
	h=To:Subject:From:Date:From;
	b=EhuGYLKKo2E6ZqDlNEci7VSZQ7c846eXDk6MSMF6JTGLOXhWn7DNYnRS+PPbCRpEo
	 jdgwvkbi+IB97dDUteQm1uZNwaSdtszrJjvDm82l9o91euF3+Ih5FYx/tVJNk4VgYv
	 pYfNVE6A8QTjUsuH7812cDVACA8qyyeVWzO/+A5sPXUlK9rLlYgjPMyAMPQcrTFnQa
	 /l8v1ww5kLjY8TUsRK2EaPJnZXEvhbFI6odLRmAEY2layem89SobMeLPcDU28fDOTY
	 MaF2ukjN8q7lMC975YsCBVCKadbNtf/Pyr/IIwi8eCJb7rEQmUV4RNM01zWbJJl28A
	 +djOk/+irYavw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1D8C00448
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 03:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166139825236.18066.14431702650297768126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1bcdc306465021ec159a5bd261d0c240142ec64147f98880f78b94d32dd6d5
Date: Thu, 25 Aug 2022 03:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661398252
