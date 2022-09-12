Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94D02F2A
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C64C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662988853;
	bh=q7bUQSUA2L39edjMMGtPBS5uKQ9xCtLbcjdJzXaZA9I=;
	h=To:Subject:From:Date:From;
	b=uOie8MhXpFm7xlG8RuKIW3Z15wcLB6bB2JpaJKeVM8p5VIyJcFy01JtEpqAeJWkwr
	 K6qwZ5hSQXVh0KB2YUR4wcsxA9G0M+ug+yS4wpsEtzWVF2qRM0jnq8i5kxC2CzR5iY
	 2sfGooSVijNUMOeV9gx5Atur1QeznWIoYhQLX8bvR/TJFpO+Tho+KJvvwukz5/ebsf
	 qq6ZuDoLyrL5HOBGVgpizK+mQd80IUAuUPN3BmqkKBNx9YnI86HhDpu6lLTPe5rEnm
	 9ri1NYUalXwwGUU21xr1SQNVjFrSJ/dCZfWDSszvgQyNIXdi3XpMRbqfqPwVccMRr9
	 0VwtG1fCD8vrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541D1C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166298885333.9282.14639883611732505674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ffe30091dbed2f62607565b7dcb24e4494279b7dce74cc71379cf571ba151e
Date: Mon, 12 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662988853
