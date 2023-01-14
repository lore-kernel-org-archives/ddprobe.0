Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EF87E2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81857C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673721687;
	bh=drLU8S/wMIRsZTDElDvfepkwqBcL6EHLUri1UClHNtY=;
	h=To:Subject:From:Date:From;
	b=B2lC6km+JGMUdawwj0rTPS6YGM69gBQT8HDB4bNuJi8pB01pmx56V04QphlGpi1/L
	 nfulotS7Bvw0F2Qxggs3zFLm/1jbO5TWM7fECG8TfTLthNKkSJ8kqqWs7yFU/0wkb7
	 bHx0zyovr1O9ozWQ+mHPBYXOwm9dd0EotirNUtleLpe6tKoYc4WKPX6MISjvoZ2moZ
	 qSfb2j8Daf5PWAa/P3pO0D6plWrEeunmPwabo7fbvKmTsHkU58611WW3lfWfOyo7Oz
	 +7Rwke896gH7ivc99otN776l5oszS23JoD3rC7NZZWcZmEBB9Td+9jP1npcndMqUR+
	 zaaqrvm9MlQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DAAC46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372168739.27925.1698609458333661884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24be9ee222be00bee8ea313067aea8c777f1e04967e2879ae146036a457d95d
Date: Sat, 14 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673721687
