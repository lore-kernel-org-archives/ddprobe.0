Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB02E652
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F04CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668153654;
	bh=6NKLK5UCqrV2A2wxMDDhJn/Qxrse1xWjCpFFbeO89XA=;
	h=To:Subject:From:Date:From;
	b=rRbKak4TAGu2rcAqSHUq+laRGw6RIqDax4IWxN2GYBJEgVbQFqYz3r9QkuuRGHuxF
	 dOzCGvVYJFRv6BxrY2r4uoqp7D21PFx5X7ykBz4AKafHGd4pI7Q0MAKjxjOB6uwchd
	 nsoqx1WayNtO994RO5irWKKOxGrFgA5Inkh9EKlRYPo/eq8EXnXJZP/RFxwt+3YzAH
	 FwNzFa+ei8SVqtctY07JIBnt3qL7ecEmiMjZ1oIT858gMTqNrGN2R7+Uje/dU2B21f
	 M5c4KEQUk/Jhd8hztue6ghyJs0KnmYAOmYzfJqMtnLpjHhd8C2tyPvsApcf0HNCR0p
	 EzbI2Hj+dptqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A29C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166815365435.18437.7350704815168319700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6926dea21d72c2511e9de04e0600774bfcc24d8f80cd7d04d9c8bbe8e85250
Date: Fri, 11 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668153654
