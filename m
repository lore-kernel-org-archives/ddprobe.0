Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7794B17AB5
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 14:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9355C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 14:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689257948;
	bh=cV+Y49WhOVB7CFu4V5kax6WtR6X32ZrkUf7zlXUiwIo=;
	h=To:Subject:From:Date:From;
	b=YlG8hjwNNbr1eCbtfw7PipDmFxPaGsnbbonhkPg3JCd3gGXc6NBtelZcsOt/qMuQJ
	 JtgqUjMhYX5CgGVv9ICRRraNfgIBhzgQTzDUjapcwCOHqpgS4QyQWydy4XmZDiu74k
	 6WA6+TWM7v32hLXzB+OcoCpwsbrzXgf25o2Fc1B8gEcEtVIn01Y7r59PjHQmyzLTZA
	 V57g3ledvK7e3u7FBX82cAEbtugX3hUXoZFn1vKofKW1VAULPzMEiArCAKHGPmcLzy
	 YFwZvm1oScHGuTcJw1EJ1b9Ue0uzf9P+LVQCKUCmpV/u8OtGKGzJgBgm2GwM4rSZWx
	 4MOBvIKy9X6lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C333EC001E0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 14:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168925794878.9871.10700749115512358082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a170f162a68cbc4ae533dcb764a2ce034c4cf4f5914da24d66fc5be10d09dcea
Date: Thu, 13 Jul 2023 14:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689257948
