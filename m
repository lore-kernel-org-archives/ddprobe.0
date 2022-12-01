Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD43B10F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714FEC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669888854;
	bh=PkshBurWlGCImdq3bqKqG37rUoT0BqXhKv9IaU6PQ8k=;
	h=To:Subject:From:Date:From;
	b=P7ERd8HEM+wyRjchduq1lSBdmauSASW2b4YSiykI8U1wFvPfmq5HHNuVqm085Pfx9
	 2irep5eVRcrbIvlMqKsl91UgOxRHlAPSeBxOsXcyH3IkJ+Jn9GdoACdAqS/NARw6Qj
	 bhd/sarc+aaFBmi+0rLKRC1fR9yJ2p7fCq+MokDJr3NBlploSJROya5YDH1+Tgz8II
	 f0z4HQDWo/ABtT/o1IrlmXlozywZ7w2aNQYgDkValh9bg/em7Su1VnfoylnzrIr44i
	 Xpg1vIvQLxeqkjWI3a6ZjNv4j7i5SL/6ZUSD5+ceAtZRJXpGNb05lDeA5UvU+GTWqg
	 WOmueJuVprirw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55675C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166988885434.27997.8117042333203529865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0f4e36001bf62559e9405da2bc05f191912da5e033af382797e210001ace21
Date: Thu, 01 Dec 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669888854
