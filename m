Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5232B111AD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA91FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687558988;
	bh=ctrpotsFseYzycjVkj9Wal01qOvYlHpkG/L5T+sX0WM=;
	h=To:Subject:From:Date:From;
	b=jSwhgYYAJHTr/CIUyLYicWN1v3hcmvPV7pg82Me9a0lcEZT8xmqIMmnEAG76/YAPM
	 RbHDoanIBcBMZGPJmC60ZVplneVde24wwSTH7m2VjWKZNE8AwhiRzW4/bCYnpkTdGq
	 wJct16Kcd4KRaLBdK+GhHfoYKlUFhuMb7GvtrLAlyU9YeEnIeMUFmnE7vk11dsTCF9
	 BmsYarUmcsKuAY234dORdAgUMms06qMBGfzKiZkZsD0FP6IzYhr7bX/mmkKxPOBfgf
	 S4PxghYQL8oZ7Pr6s+yOh7N+UqxLrjIgadgEaf8iHUjZKfCwVx6WJ6oPKuIJqWuBCe
	 qsQb6RfWXoW1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD552EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755898869.22300.5298404769491924582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8280cdce14c525fb277a80ab9b723550111e2e8221ef94dab0200a0c566f5dbb
Date: Fri, 23 Jun 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687558988
