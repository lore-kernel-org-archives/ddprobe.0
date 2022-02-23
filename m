Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E3E7B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645611985;
	h=To:Subject:From:Message-Id:Date;
	bh=NnoOe1lpy1Q/KNnVvX0b3+myNSMW68yVbHjtVfHO5yE=;
	b=UOXH8XDkBz+RWokGLGfAeluuxFKpe/FkTSBueqwoEZhldiMwI/B4fZAOjPlelC8e
	V2QWLDZEBvkFyGKBN6bNM6CBA6/2Ihw/7t3NEvUOk1BbYhDeyprcVK/tDVq/cLyDnwb
	ioV4xCHeyOJ9MWJa9GlcE8rIZ+gofElOBcbl5+jM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645611985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NnoOe1lpy1Q/KNnVvX0b3+myNSMW68yVbHjtVfHO5yE=;
	b=E5kc54UFUEj4HvGb5HTUyorj1jXT8amw3v1r/98xXVkT5+EdtdAPcFDtfVCNeK5I
	upuPjbMNsCTrBzI6zMfSDs2yNGf+U/j2lQCQz9zhnrYteQNjNuOPMR9HfJMN2t6Bs63
	R4PDYhnrO0D0OY4uFEYlikoxSKZzFkzetOYhuKSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f261e27ae-3088468b-05a8-46e5-8849-3258a12a9b58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4006d8fd54d10ac0910a18fa1080cb5a36562d7ac3ac99339d84531a496ce85
Date: Wed, 23 Feb 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645611984
