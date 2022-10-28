Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48E9E833
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E109C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666941054;
	bh=mZA6V5D8IA+gFSdOIaBAbGYYVInJjILNybwqejgrOuE=;
	h=To:Subject:From:Date:From;
	b=l5yGV1tQ8oXYkjAKRFQFVXx6/gZcM5KLMUCsBsfso4uYnwKdWUOFQZWmmOnT0hZrS
	 FtxpzStV0TbODoyVdLSWsYlehYpI6hXqUKU8GBgep/H/2h5Tcrua/d9whdl76EA7mI
	 aftodCjgJGCWMMjcScpq8OqF1tkBCrYar5rRnv91BmxCvLqc2noqn4Jfu77gQ0OtkM
	 1guQS7V3N62n5DPlKquFFrJNbQb7wCAm2FAvt8vECMIhYk8Pl5uIe2Oiaq4NLKYlFL
	 Aa/htnX6bf8CP9ZVwHNpcSyQKK44XvwWTbDrgQNuCA1MIG7eqZ0+ooFaQwSSPpaL4l
	 HrWWgI2FRibjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B69EC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694105435.17153.17016690989474375663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd23b11e0b9022f05c580a57532a2fbdc15bf6cf173ecdc9fbb1daba11a5fee3
Date: Fri, 28 Oct 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666941054
