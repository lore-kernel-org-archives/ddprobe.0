Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C450923CD
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E95BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661680252;
	bh=5ipi+JClJbWggi79FQhCf9M45dNrKl05rIWEgmS2Uc8=;
	h=To:Subject:From:Date:From;
	b=G/1c5tC/HOy1ZPuVaC1s4yy5Xv+BpZasufGwVq1fTfTgVqGk/ZarAPIVJDpMjcCjN
	 9s203gYzJOTzk8uhGeip7wuVqG7sTSEV299NpOws/Hr3ezuZWSDmOHYPs7yieXW2uj
	 wK/EIfm0lpx5JDQax4CeRWUQyrViG1AwZgWazymVwG0F+thoTmdko/KJ88VAFXGBjN
	 vGgNKdMnUcvI3Xj9/+9jBLOrFoELAEO8XYyJhgI8jbuuBDnzGQt2EYZergB+WiCGxe
	 Zbo3VNQQ5Jq/v/iP6uwTKO6zuXXRIqFnImDHgAhP+HvKSu61/AOu6Zzm8EHq21FJRp
	 uC751b7EFTmBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53785ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168025232.2428.1651365245405971422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c443e90edee9d219747e60fdeef56dde193f5cea65867eb96cf5d050fdd74949
Date: Sun, 28 Aug 2022 09:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661680252
