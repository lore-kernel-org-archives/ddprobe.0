Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A416C2CC
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 10:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFCE4C4339C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685788086;
	bh=G3pg/CQ7S1QEVUSue9tCfq08IsyWILIacOwGW2TrXfU=;
	h=To:Subject:From:Date:From;
	b=F+m0tFX70ZmiZYAJuneG3yhMxzqJbcCvlI2BZdZFhD167wz1IgWxDeAEErAh+08oA
	 iLZ/TarCH9zDUo4TDFGBGl7/ecw6HgMMcVT/53lp6WWCJIYhLnuw226G2EPW6EWfas
	 dEO5AJoqB+egu3vbA4WIzLgiwG3wf01iz8tuIkdmQ9+7iIbOhv2h2naS//EXOjkXbe
	 /xCxMR7Vn7Zmyxcf0iowmb1ilhaCqYru4sTrtQpkuRxPixgqHrgkeAtOSXG5hPsiCb
	 j0k2Mty2AKLaTXQnOpgFF9LbB/ksN7h9aeVWcFv/6GQXipnKeClMmVVrySfrFJ/zJE
	 vxThMyvvjf/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CD6C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 10:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168578808579.4437.7881667119870296981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f240655c1f8ff7c09c00aaedee2d0ae2dcac709ca36909d62b1c790f89104543
Date: Sat, 03 Jun 2023 10:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685788085
