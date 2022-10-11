Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C638528F4
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768AEC433D7
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665483653;
	bh=MRjsJ9DmmWCQ1VM2WIyidvwMHIxkofh2FePiFNPQxqo=;
	h=To:Subject:From:Date:From;
	b=paVEEC3oMOPgRlRlknrDmzpetQZWwtPvcAEjWxyNgJXefwl3P0+zhLHbc8PPAQqec
	 Zy0C30caSgtnnqgwUdSg+v+fRr0s7wq4Hq2/reZi+VVhTNQrEm21+khQyk47galN+o
	 vEYw6ps1RKPEZVSia1NNB0Px4tppVeDgTTdltOeVxnphlzvwCQulccLph6tx3rW1Eh
	 eeVrcGQzq2i0c2GlxNz8bD3pxCrPcSskXuUfFyuRg0jSBd5AbbOYjCB3SzayF9FXRC
	 6zVLtyAW340s9nAqaOeNXUaS2n+0M708BnBvOUqzxcM4j/zXOA51/AhjWDzel9AwsK
	 gj9yNejhnFLTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1C2C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548365336.18007.6417403563131382539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1d9eb3ca09b0ac7f36e501ee7bdb7b9e98545cbbd73cc24284fb1ba03ba975
Date: Tue, 11 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665483653
