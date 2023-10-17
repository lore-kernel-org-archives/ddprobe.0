Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BD428DD2
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/zwOvU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ED7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697529428;
	bh=dEmZswH1y2BP8k16hyrGrgKhVEWrCOCsfCy1KRJM3CY=;
	h=To:Subject:From:Date:From;
	b=G/zwOvU6uetkl/fmAaPjGchozIG++fgQpwNSV8r7kEBHlKSWdMdXwus5Z/cRalCiG
	 NHtRwzyhZ0rDP4xiuXeyLhln0YR5TPcQQXyruBPYUw876cNDWCrHuAyrsy1MJ1CpEH
	 COF/aZMuvdU2PGSxO5+C26pnJQEmdMvGMlWFuiHWNZofmsc6TV+vmDxDXWW0a1hbmk
	 i9FSdkcWVybUwFH8hb4SiwKcGUlecQcq/tUarqDgsM/KzZvICQcIhG5o3s+RDenFqh
	 DyEptlOLRsCzPraxKPKJI3Z8R7yHlfF6/IOe0wGoyX4jeu/odFYdKThnwMmNygHQff
	 Y/c8Egbj6Dh+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EFDCDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169752942866.13646.8654661788040535108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c5168360b6b4586a0ad53987633307da91023eeb0a990aaf9a1d643365000d
Date: Tue, 17 Oct 2023 07:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697529428
