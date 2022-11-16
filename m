Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3BFD52D
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C345C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668624654;
	bh=coA/vgh7sj0LrwRj9+IipEyCCbKPqFhJJVGoigrNAdQ=;
	h=To:Subject:From:Date:From;
	b=ExYDDv94Zj4ICsm4a4BSwGq8bEUc3jIOzbjzMDRCh8TFAipb7JChYRpa50gCf+4SI
	 eGWeXr8taFuUjO65k9qqZLwMoCtbVEB5xTvwkaXwEXqhW4MIPdIi9b/Opnvz/Gyj0F
	 pa0TLrh4iIz/m41fcRqbDfKcd1uc+LcdOUo4MhPJ1sYccAoUMi8ePCuGWqLkjr3RGd
	 dEoVbEAfIPt9g/aZtfrUwpDXhhApKDMIGW1aHJp9jawtNTE1BK2gMMIJmC79zifV9b
	 94ma/DP8gs8vcbXs8/L3CFNmD3PYsd8bl0J2Jkn6GdzqgwQiKcuv476+wvap+D4dcD
	 ZjQ9HOUjPmxpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551EEC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862465434.19663.7259275384976825149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4eb55f3f0e8d5f6ad47234e2b34ecaf3b1dd3745db97243cbb92df6683b664d
Date: Wed, 16 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668624654
