Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F78139B
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 17:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9D4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679766725;
	bh=AZaAxEtPKMt1ciJ2hcNuKbjN+vPklHMpp8DBYsIaUhI=;
	h=To:Subject:From:Date:From;
	b=RyluaV3ED5o2jjzkadfKOE/7TNc9teaGlKk3ZS7ke1wuOModHk3x5AmBduYH66jko
	 NVTyLzzv/ogiIhAK7Hcvwkyn2OzOxLeMQcmLbY/tjiWiotFXEpiimIy++2joAK9Y7D
	 Cf6/krzNRvB6cehtJ58z11NO1kTyPsEu6yEnOGL0U07lE28YMJVh5RQ7gL4Q8BjSnn
	 jyqCjfR/ESVSnxcWuo5ODB345Iaob0LT6TsPQ2oE6Q7uNPrWAn33IHL3W4th8yKf4L
	 sGZaRSbMtr2RWE/yrExx4rGrm34erUgLCvpMRTnyvJX0z1RssogIMQxLf9Sm08A++n
	 a9XsVd3PAsnqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C394DC6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 17:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167976672579.23371.11487034213174912707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a045aa186adffc328900b943cbf9666393a996becde9fcacc3fb652703afe83
Date: Sat, 25 Mar 2023 17:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679766725
