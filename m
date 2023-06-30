Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C29FAD21
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A58C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688164988;
	bh=g0qTIXJ8yCjg3ffFtE3rTb6qP+CVeNnZPnrvgcFR+o0=;
	h=To:Subject:From:Date:From;
	b=PZMA/X9M5gk3Sj7cs3ispQQmRjraFbz38wll4+KL4tlPcbPqxauEGUOZW3f/VPMo1
	 vNqT/TJRz8cG5ncpFXwF2v6/hcvhCw0OljCEzC5dguNqQjGs8K/OrlyZcoAcHSL9UH
	 hxTnRu8HRN5fkqLwOwS7QEcVM0eQfYRCimaiN3KDOeM4jDgmi85ZmiS6k7VmH8tX9Q
	 zyVBMHltGU7Uuirj584F/H7bvhXsPxsPN0cQlnk3XmlTDjjF3mJBOrymucjaks0SK+
	 K1RRGSEM39XbhrHKNjVaPgyN4DMbBXMOYWUNXuZL/bi9elJ+CwbD9a0gayO/1/uwIY
	 HuZ2jCCXnmMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65B5EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816498871.19122.7541147872950476357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec10d62cb78357d60666f28884a47779849baed81405fc742e7ad3dee5a1c4a
Date: Fri, 30 Jun 2023 22:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688164988
