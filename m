Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8EA23DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C698EC433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686673028;
	bh=uDo4IHZJhidxYH/H2bUTFNXiTcspePArs8isu2F2y/U=;
	h=To:Subject:From:Date:From;
	b=hSWyxZGusDC/L449rpESN3qWlWGsxbWAhGiSNafbjlfRE8k0Dmp/kdrxxUJnA1532
	 cin2eYlF1mYyv0MPJcl5MejxXTynO2XHP+VDiWWEe0GGEbeiBWstamRMqlr5SWYtOj
	 RkfVlO+LV1tPG5DOeZ9puP8M3u64LuxAaqdwyLL84hJudbQqw3oeaCdAN8D0QZRPEC
	 a96DJRSxNJ1cNjjLFy/RfxWr9MAmhyhsFwY7eh59awOA4NogOlNSBKpkgBI7qmXllR
	 s60FctVHH/sNUQu2auyRtmF0kP5mkoi0+Wk8ZCiknBwZIrabvvAKOhyzbvoo5ibkQW
	 Yr5PQ35BwkUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE69EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667302869.1167.16131714484390008121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7d0348d406bf1767250703e96361dbde622cbface07e1caf501eca482a2b62
Date: Tue, 13 Jun 2023 16:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686673028
