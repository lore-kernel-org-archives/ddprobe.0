Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A993C34
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88370C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669408854;
	bh=d3le+zkJVx3FQN8OEm7koQvl+qQmCV+EmpMydamK5sE=;
	h=To:Subject:From:Date:From;
	b=t78pmh3Le7VDxbuxPSyS3XyP1l0jch4rqXWdD9kFYiSCksUNi80rUBSKoi3M0ElQF
	 cLls7tNElBp3a/MpK3lc6dc+ypvi8HWVvW5yU5HGLI/i57KbgDUeLUtvRD+yhUMTY6
	 zcJ7fMMNobwByvsCKFTdvQ5gc9QySaeWfY/oKO8UQPZBQNNnbFCoCI+iY0Bysd20dn
	 vNchTrgIDpfbQZMc0hveAbm/qAuTS48hPlfWzuepuvcsf2BipdA3JxquC8fuV1qv69
	 J8ND5WUl7Vb0+N0SOFY6tFuSyi08e5Qj+q0UddXeSW/bqw2XmbCnjPVDun1dEFxSyp
	 ToZexP15KAA8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E099C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166940885433.17918.8169313502403573441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8963611e35b67d42c366221c10730b0ab6717179eae9c73d150563477c85e7
Date: Fri, 25 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669408854
