Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EE44C9E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78420C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665249653;
	bh=IVySiOWfVIaQ2IsCQZsmkl0rialsTNyo3Vt4zG4wonE=;
	h=To:Subject:From:Date:From;
	b=W5l1M/vU3zyRw7S++6AmT3eLRx7W8MlvC0eSJPQEwO8INxL8bNfFy8lyzZJYAu82S
	 E2CAmhA8JlOrIeikF8WaZU55YZgqNa0yYaiHdHqv1ZsXlqNHo8+jQ4KgEZfp4lOsqn
	 bCcpkY24SCBCZ1NhyCTxwpLGZ0JoNIG1cKKczqh1kDdu1BlLcLB8jmGsPTJWio0sdz
	 nri/MQjOj2zleLKJTR6h40pouNrMzI2IFB4TkJSVO5MYct/wmQSKwLaHmOpeF66qbb
	 Yrz+rU9yqNlwGjIiwIgbFnEBb4pm3YfWQoolEcSdo6wdFMMabXuOqpphkPKn/4xRkr
	 MqIv025D5zjBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D818C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524965335.12396.6134985265407959329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ff54403fc34760900ea9622f398ffb862ce0ec525a9536f267e708b59b3627
Date: Sat, 08 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665249653
