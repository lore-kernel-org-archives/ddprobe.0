Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28775CA8
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C64C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661811652;
	bh=I18LVReKEruV5uDIkGDKx279AbKiRZ7tKHnNm71S3EY=;
	h=To:Subject:From:Date:From;
	b=KdaXA5NgsAUZdf2oWleeGkhvs2GuBF7rYjTQEBBusWhEVzZYK/P9svu5ikZp75mZd
	 9feJ2mGDxecJvhfy2JC/lirsOG7BJXVJwQgOFpAqj/fNIasuC/7s1MmeZ0BN7aCLZQ
	 Es9Sd0hUKpsbXhmT8B818jEfqGTtHVP4YWjGozair8JeJP86aawVvAS+3ZXc5CU470
	 lXDMq/TDkaF8U5w3Wci9fViQX8cSTgKrDxFJC1JG5eEFuEDLFnNMi/DqXvIn7CMVvx
	 v8BRG1Mc27KCh45whV+JTp4p6LzwxliO2yupYKsk0zjBrDyp0dMQ0fUMJGB4ptuFe4
	 tcXpgHeXSGWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D71ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 22:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166181165233.548.10323761916833148079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577b590072f956dc9d6900eb51630a8dc3cdea31ff1121409f49b67d81623534
Date: Mon, 29 Aug 2022 22:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661811652
