Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56862F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645204585;
	h=To:Subject:From:Message-Id:Date;
	bh=eH38DiAWiZwkzxmyFRX+O3uvsuun7UdmNsoQG57fylk=;
	b=dyrN+f2DLxqus/L3Ja/S+mB+zasw3aWyfTcqIXD2hcifUj0FXxm975VDrOFQ0kRk
	jas76Ix/Tr9wEUTbYgX1DsNeMEtHt7xXxL9mRTanhhnu0Uf3m8lP+fJ7QJaEtOWj3aR
	Ry9rySkA1imJB43IxARZJ/BhD/Hh9oaBd5uH58GE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645204585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eH38DiAWiZwkzxmyFRX+O3uvsuun7UdmNsoQG57fylk=;
	b=TOtqGXjj3Vg0fOOsJCVMBgl9CgP1D7YMO9ZO/HI7W6NrJru8eKkVkcC4vWsXMJAA
	mVu9Tkw3VFufKaVRgLnALdjRqjGqrLD29dy6y4xDvXBa9U9GxYvbNtnG6UmyNzW7uwG
	bG9xFIw+KG0HRbraUsNGwwoXqqycOW1/BXg7w8nI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0dd5b98b-9aface72-87d9-41f7-b671-fdc29203848d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1160980ec52ffaf8f9c87f3e1a01c75f308e0934ce579f7f4dde08361dd40dd1
Date: Fri, 18 Feb 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645204584
