Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103217F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neB92KFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81278C433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704677296;
	bh=yrO2ud1tcPg3qVr/fSm8t1lSVEzjXEuhXiG14AZSPdU=;
	h=To:Subject:From:Date:From;
	b=neB92KFFlpJOCdJbleKZLXox5vxLnYehJZU3RfPijfV/fk4Tq8WC1csbJCjrNKsPk
	 HoLT8U8xGCtjK8CpcuhmfJ0kMwghjKyt/weqtJidITlhozl1Z6aLqHk9v49C9dydVu
	 5/oJu/HqctjS1hoWsTVV4LGur4gHd+JVIvb+xRx3GpyPaz5nGUX7R8velNg1oWkXck
	 BfhkByT9+PdPtHYjvEwKdcQkNxvh9edcqvk2SAWM6NGm/rNbfqxnR2a28e/ljH8sLT
	 a6A1qp2CE5KCUnYOgeNb1GWyH1H7t+zemDSTQnrhmETztV5ULL17ZjD73iTCse9oVo
	 QkW/bbo9FFXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666A1C47073
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170467729638.27820.17501784644689334613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864ef1b43aab208a273d989b7af0115720591a3e93821028efe3df35615efe00
Date: Mon, 08 Jan 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704677296
