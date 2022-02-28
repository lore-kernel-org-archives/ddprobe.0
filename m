Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA2C48B7
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646044284;
	h=To:Subject:From:Message-Id:Date;
	bh=2MHDJQEqwWnMkHeAWtmV36ibyjcWbHewcBotQrKB60E=;
	b=WhwTtRigidI54YmgTMYQlTHjnn/YjwLBR6TP7CR+ekoThyKbSr4p9EfYeclLKqLf
	ls7W1MYiBNc+wMmZ2/eAgdaVzoOAZZSYVIOCtP++5Bg29mLKd2qIqO3dDNqW40Auv3L
	sz/IUgWCCsE593x9RR488IzaAsFXp13mZ8gM2B2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646044284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2MHDJQEqwWnMkHeAWtmV36ibyjcWbHewcBotQrKB60E=;
	b=Q5h5vY/O/6RQIM7XbvCo/gVsIGrgAdonSz2gm2+YNDBHDD888b3J/wSRHtKIiLtK
	jNLBesQQVr68fisFK+r9XqrrV/gOI72ae5qWG9EFLVznxkkXnMhZLEkPjRj1+FsPIKF
	jVj9NJeFea5b5bcFNHskdSTyaeY8P50gmXF0VUD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3fe28758-9b52f8fd-a2de-4480-a894-757cf8dc4f26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 971000c138ae7c3886cacaf431dd59987b972edd5293af9f99c9c5ba6070c727
Date: Mon, 28 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646044284
