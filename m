Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D71D5666
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 16:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6087C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693671248;
	bh=+eqx1QUzVK0exOOgdMJts70jYn6xpVgfBQO2ZVFFcG4=;
	h=To:Subject:From:Date:From;
	b=O6wJsNksgAn8W+fOBE6E7p+4UpxrA72VSN1NYqMMJq/nvmh0rkz76L/pr15M0/SWn
	 sAGv3kFx//G8KaSgmK2HCxt8+SaPgzPia5SAWHeZIMF9RDiREA2PmeAJcldz8ZAdae
	 d4koZNEGKHuFES5tWMYD682X5idMrGKjZLpQDQjOMIno1Qyg9jwS2/VuH6QxTFsZ4G
	 TJNdjrz90KlLbEjyr1wVwk8fvDzaVD65MaeehF/9NGzy6f7VQmloqCtov8iONWWQVT
	 7SKA9BB66TBv/zIraZODoNH+C7bW99NiZeSFIfo55yDlRO+0KtirRnfZbTxpFOHCDS
	 Or8wD0Q0LHqEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEAFC001DB
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169367124869.7446.4964951294811246883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30cf81d4d68dd42aa9bf7b91fc7d1565ba4bfecdff5eca27fdd02ce05f052ed
Date: Sat, 02 Sep 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693671248
