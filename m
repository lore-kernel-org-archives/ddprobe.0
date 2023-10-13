Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA7A371
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnFeh9E7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B20C433C9
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697159828;
	bh=EJ4c+xHbNv1nSzoCUWU4507HZ9FMkLIVJ9tLgdP4vpo=;
	h=To:Subject:From:Date:From;
	b=EnFeh9E7AbnvfasnBts3v9eD1Jv4u6mxoK1ISfA9aag6yohl5W+ulZH2ChIy+P6LG
	 BlzD4CxhOKp0KRnYOvj4ZdfKKM3cbt/9q/vcMoyb57FDaGcrneo42IsJX1PPOOypV/
	 hPvy8mhDPJUwBPJ3h0uaTXX+CLFQWqs1vogCJKJ7Hb7gKgYrtRsDt/f0SiX4wcFMio
	 Y56AjZPVAxxvZM4yl+X2l4Vh//vbyn+5U9Q9rI1P0e9H2W+KZVjGvMjrSm+QmpiY28
	 msdQsh0j108RX+aPKEl4DYExnGueqx5OvzjAvSuMxzvrfhhRvK65TettvK4IMeesXF
	 jFTd8ApdolEeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A1CCDB474
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169715982867.17302.10102106342871607082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96182e551b01649457cc66c36894b56088b28de0124cd4823bdcbb4c6ae78ef3
Date: Fri, 13 Oct 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697159828
