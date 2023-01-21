Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF41361
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEED9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674267725;
	bh=ESNAonDz5yVFvy+W/QWtlStvXR5Ag0kCTAF/54s/68c=;
	h=To:Subject:From:Date:From;
	b=d5N5eryfY4AotGJORN6EIKiNnJTaj4VflpszMIXx8RcssllbpSc0I6Bgf8AkVTEeG
	 Poj564Rzc1MlbDWJq/Rpen3hrUtCrR7E95GkGA4/LgYtITjQKFHqH11/RLdFkygbRK
	 BTpOmJ5kd1Q6cvK4ZlZSeyY9GsB9AHclAChfqYL9ftEEKGKvyhPq8mRX95xpdbmJv9
	 P4GlCyzbAqVHJpPcYjHMwOdXiAoM/vBEb3nJcB51PdTv7yAq/5VXd8asWLiI4RAXeT
	 xay06T/Z6oDLlXouAk/0Gfu199oN7l/I+i/bvmU80aoYIHmoJAAQuD7TQbVtb9A4Hf
	 EU5Zcivm2Rg6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E88C05027
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167426772573.20263.14976560295517452534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8322058d703b8b37ee00bc66f2813e61debfc9ace9d865f0f76f4a47d6998d
Date: Sat, 21 Jan 2023 02:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674267725
