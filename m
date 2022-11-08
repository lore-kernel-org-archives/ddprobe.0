Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA118BFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E32C433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667933454;
	bh=sUpGqnAxBg4l6ukWU4u3wNXdwgv61wjByP9q8Qc1rtc=;
	h=To:Subject:From:Date:From;
	b=iCZzazNfskovlCsMZH2tQfeSeMj062oSvSv9prDTPGBqGEsthTS4rCINnyUdXHQ8G
	 OASj7wQZ1NxavRT0CcCtpGe26zBBh9fuxb15LeMwXeWaxBhNQMVzyByDerq+NhSwIe
	 LxRv43efXG62rOwN+8U0uw7wPgZVhh39Dj3llD/Ypd5WITd2QUQBW3EkLbBlJ8x7zC
	 I6ulO81C6ImeN6zi+fbn0y2wYZ4rxCgr7ckGD8oey77AcalepbZtT0vA4XWhcsAS2g
	 v7Ec7C1g1YXaj3Rsxmib3ugRUJ13eL1NpW4epMCceF49fOkNa7AN0vuAwQWcFcA14b
	 irnL7KEEdCZ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75AACC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793345446.13950.7321833166827922896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ade312094169a39e918ddeb2642598524d102f5cafd04999bde71850f578ed
Date: Tue, 08 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667933454
