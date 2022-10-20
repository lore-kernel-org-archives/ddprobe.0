Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 977977E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C820C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666227653;
	bh=yWdOfFlJKYf34Ja5a2Fa9ISDvtzDs/Ln9oGQeLvuxUM=;
	h=To:Subject:From:Date:From;
	b=Crm2Gt7DIGM5hOF7IQ8xvBEw3woHKqaSyggg0yGv+TIhk4wXiHjmDJEOTbuWw7Nzx
	 o7Wez5bM8iNdZuNHmvoaBQciUvd+TASZaHg9AhL38aiTS7Lgp4k8/I1JNd6fmr+Frj
	 MNl/xKge4ylF0xX9BfvcJPpxcNu0wiwhtCSIwcUbo7pw5xKM79hk40rZ4L+Q1sinOs
	 NjZSSq4aPqkrrpN5X9LPht1zoabiV8rrc8OZd91n/y8qy2njHe4G4bcZtjj/qXbgiE
	 pAyRn9nrzoD78WB1JYdGuzBuYyFxtRzyltISf0Q6mCf2Bcpr1o1dTPMOWXk2+gtMIx
	 gn7nWxyNp4c+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5317FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622765333.14076.16062808893748045981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701e6971afd6921110bcaed80370b9c337e678d6425db6c883b61abe21cb1b08
Date: Thu, 20 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666227653
