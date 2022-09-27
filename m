Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA81A645
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F244C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664254253;
	bh=zDYoyGFhaYhA+jx+/bWmBfq1AmyKkQeucI0rfnQ81/w=;
	h=To:Subject:From:Date:From;
	b=B0gLE1ikJp6n2tIV2/Ab1VWAAwwXCpsF18cUTKZtZSbQ7Tgm+DbaSVHhFvSqVci7M
	 qFb3mI72mSRSJfjWsn8iDVVgpTEVhO719T5w0mgn2ACs/DG2kw/p+KmiBihDjwlMR1
	 OWXJvw98oIAaC5J7pQEfmaULBYofj7rCnWiH+P3zX50CrM0RnhjuASibt7ao+7Je1k
	 iCpvggTcNQQ4qpLeOatFutFs0kfPfRzRrPW/55dW7pJ2Hdw28VapuC4XHyG7+AUfPp
	 B9a0/bHFQ9R3LkMDGq0m5B0UtNUdLR0lVunA/jaPMOym2wy587uoLDSBj9G+9ybVHG
	 +qFW1mJavEJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514B7C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425425332.13419.603743662351030713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b64f1a5d7a665c35428eae2d241cd83f7a24872d19269d433eaecab1690ee9
Date: Tue, 27 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664254253
