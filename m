Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F4A3205
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5358C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674859385;
	bh=lyVxE0z12qXwoA+Ljvoeib7s/lV7gy52HhTRdSzFa0g=;
	h=To:Subject:From:Date:From;
	b=ayjLTLYJdUtsvV6jQoDz4KnirQEiR5qjz2RWqll0vAATaSCROytK2Jaxg1HCOkmwY
	 0l4EZXYfdOAgKesC0zof9OyhfvPIuWE52VamB0wEQo13lo8gbUmBb50LU9vyt6OweZ
	 i7JpdDlDKlbd9Yd0T2ymSE5ZfyGbtYVnyNbv7t0q5VLAfgBSRzJ+Y9JMDaNRK4n2xh
	 X7uwmhMZxx/V1WiE5y7o0IXwgdHuEwufobN6cqYdKL9BKUgXco0ibvHlFvXt+preIH
	 TYygqTqH8j6q9cZqtI/kCewVhj2VLc+TG2tZz21DzLo41+wmUzqA8EqCC+aUO1na9F
	 KBkkeVz0ft8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D3CC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485938574.18823.1722897082399094987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b47dee7aa7cf00d5110ec522fa495208d4f0d8ab420cc3a9ad9c8dde07e65e
Date: Fri, 27 Jan 2023 22:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674859385
