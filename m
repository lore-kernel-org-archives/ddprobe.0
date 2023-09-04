Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65565C14B
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5135C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693858448;
	bh=zXsmFswapqMzrb1AI3eFkhW1ynnV1xSST0R/ga9KWg8=;
	h=To:Subject:From:Date:From;
	b=WPUe9lXGs4vMlLLS22IkkPURz1oycyovdZGYF16yKjUHQSzCNhzMJnGiZhWB7RdO2
	 7h/rQ4LsLcm20UbPr617hcwza9EsGH845fX26DiE0y5CwZ/u2u2UPJ0hcpq+DMGeZs
	 4NjorNEseHqg91pU95ZKzAWwzyCg8lmUQ4G6SXc1OSFENo64Tx75kY9BSFU9M49s5p
	 GNUM/n79HwRMy+ljkBlv4Hj1Rz3XZobT18sJOZRG++aaUJOkUiOeG58rcssV+Zp6nn
	 WOee2GQvQN0442dsnj13QOxbaIb9oP19cl2QsDZhmcGs61rhAU88HnzEuM9aVz5KJ2
	 Vs+C4t6wsCLsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0E6C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169385844868.14170.6357345953132850783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754f11520e1de65218b7bfc65257a06526646043e609e5bcf325a1c375ccda59
Date: Mon, 04 Sep 2023 20:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693858448
