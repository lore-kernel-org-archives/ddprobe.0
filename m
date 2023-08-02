Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51146100AD
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 18:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5DCC433C9
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 18:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691002328;
	bh=C8Sdf8OuDHVrYsaiKDmo6WMO62sqZWBMQHOcvBTu9u0=;
	h=To:Subject:From:Date:From;
	b=jk/yxZniwx60fV+IWs/l7sNNYbvRIykwenYB/mu0ExwaqG1CpVLsfUdDo1r2cHxEo
	 +hAD1vVuh5OfJepspZSsMlZJp0fObIn0GSlIAp7w0TRQSKDRjT5HNxe9yGDblT97LL
	 PgIT58kZLZOK+tvHlhETEifsuAB4M0ZVBUC6oHb37wTaNN9pr0/XAsa3gqAv7sYT+B
	 QOkuVD9x0EBbp7U8mSFvEEQT/4YUYKNmOy849CQFOgL+/ed4Uu7p+0NKEHuR90NF7S
	 YyyB3eY7nqX2k2BWDGb5TcSWoubWkLesWwcHmax1a5pQQlF7ZeAJ4A8pu08N7sfnBa
	 MvDRFXrxZA6GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1422C001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 18:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169100232871.5032.1193229385135184741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02663cc62a90f787940837f692db99033042de080af15d463700624137a042d5
Date: Wed, 02 Aug 2023 18:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691002328
