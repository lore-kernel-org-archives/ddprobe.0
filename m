Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B7C2F47
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764BCC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661447452;
	bh=dDFFL1Bpx7v/YSwCno7KKvZfvTsOHnbgsOZTzshrYzk=;
	h=To:Subject:From:Date:From;
	b=bnToK9ynPQho9qewhNgKLwC6KvxouDQHTSDWKrmtZ1GRHRWj1ALd2dkIvohAMXkB8
	 o07nD/taGe8+im0rn+PEE784GwrQVGXXZeR8LKEaCY05FkIdAwrxk8FawyeZC0xhHU
	 oGFqUqE+0BYA7XOe6vtwCSw+r/WfgEgz852YJmJ49cKbY8zAirVYRuBQ4A9zGSjzs1
	 IT9hqBwElkcYuon0zB31Tuz6dnz+FH7Hbp55XxerHKSCI7JbD/6V8KFu7tGvPsoOUf
	 qZGcJWWHUlKoc5UQ5BjfwZ3bTfRRzfewHmh4IlLJtuM93+smW0Rkdll/6b2ju/kEkw
	 iF/dOp0FGonGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7D4ECAA27
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144745236.21838.9047476767657535052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5725f124d56f896ff4925c2c1be412bac4df68879eac087b015a2e1bb50f7f58
Date: Thu, 25 Aug 2022 17:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661447452
