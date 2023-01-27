Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360EB2565
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02CDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674810785;
	bh=goPMLiXKWlB1IISZ1O9nmbSO2Wc6EaBv6HXk9LDcDxY=;
	h=To:Subject:From:Date:From;
	b=ZqVP6Go8v5CsJ71VRnO4deKJPunBCKmr15g5XS/hMetKLKPSczALVyiSO6TjKTGpW
	 DUE29sDPgowRdXacSdpsAb9BABJUP0ITcRtpenQyJ87qx93ghaDRyN7/2mPCoD51oe
	 ERzQiztaFNdkjj5GQ0LCZCGwob1OyXVK0KwjrRQPcZ1B4uEUJ+xgn6APM8KzUo8QK1
	 YS/lelqukZt8YSq2uDoGvEZeiGtzYmsVe1g1WjEBQtMY9vCUzJFFCjg3gYKqEYDIn6
	 tqpNjm7PboD1LX5b8nipA9zglAp8DpiaaqU+bbjCFjjy0Y+BfBHzrWHg+xJGdIOHYc
	 eHL4ErH1jmSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69EFC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481078573.2789.16835899459681880507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df235e099dd26b647b922499e7ef301a13ab8a043d6614a29c31afbb20b1634f
Date: Fri, 27 Jan 2023 09:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674810785
