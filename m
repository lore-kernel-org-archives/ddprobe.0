Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633972908
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EAEC433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690040528;
	bh=2Hc0rzK5IEfHPwK+msuQ3f1n1d84yCgPmdENQsoLntM=;
	h=To:Subject:From:Date:From;
	b=Sltxtzpq84lcLEtmhJC3j1bD63A8ow3XCzQ9LLcaLHQx+ax/kyNzoDKnzYu5DxtYs
	 THlURFKJWX2yLkcissrUDsTnCao2ZWJlFgBO83575wG5zg6iP5OlCq+h20CNR2M3UF
	 IC6d0+eLcA/VJUO7rg8wWlK1d4rq42/+BQzxQsEIe5niB5ohSLfxLQXiHRxAWJg+rs
	 Jf8Cn/CMfI5cXoaqLfjHwFWqea/uk17G2MxNbKEtaEE+lGC0FVjI2GoqXLUDZOymfN
	 4ga3DtBEEPb4JPhW+HGDo7ferRfs+u+PBPEEzHM7syX9udIPoZZueNUBXK3QL04J81
	 gPwAjFQsCqtLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCE4EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169004052869.13953.4434744828461826739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032af9a24f0c46361584698412bedeb19ba36185306c1f7c68eeb93b164ec3c9
Date: Sat, 22 Jul 2023 15:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690040528
