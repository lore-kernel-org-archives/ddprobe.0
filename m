Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5380024203
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 21:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKhBYaaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FC3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697232428;
	bh=OvZhbJWkWgyYo5lXXC2iGDnyKdlUtImOiC49QFO+xt4=;
	h=To:Subject:From:Date:From;
	b=sKhBYaaCJNdG/kPtDird02E/i+B8guLbWf1f2AsKdrwcdVAmv/gUU489TWOibRBC5
	 1zL4ZR+ywqte0YB0T4lld9IM9k9IgOskjSkZtF2dAFhAly4x5MmeJy4FJ1VBRBxbal
	 bDOohobKIt0XqZUftRbOwbs8s3Q2lXHeBT0HeyIHmW8bIAuwwhvBkz3s/Cd4TSYmqG
	 P6vlqMOFKKCwMcZW8qYqVDcsmK51W01rwOUQYsgsDGuwgL4KRGc4bDUGu9EDGADpUn
	 l1vXtNc8jGFHRwCO/b913ZLs22tCDqRnGwRNKmwUXkDv44kw9bnLz4h26xgxifObdM
	 +F3XZaa7pSeOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D28CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169723242868.20639.6985922977928772608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd48ad542fded1cf478d3a454d38aec574ad43572adfd9503bd4930d145df16
Date: Fri, 13 Oct 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697232428
