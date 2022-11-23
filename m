Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB5D7E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F0DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669216254;
	bh=M6CBJoaEGnThrhB0jFKJ/qB1n5UPr1yhWVXMiJn/qBE=;
	h=To:Subject:From:Date:From;
	b=IULzspoSBmcniNmrQzSc2zRxqfI/klZM7D3ZYbiyAhuyioZqClTO5kOKPU6LSZKg+
	 87foEqP9cmj5MV9K3I+YhpOyfp0KTz0FyEapXiiHDaeDnUyb8SC04b5h1O+d6kEzGf
	 dCoXGvWZ4t4eMA9jgHKEm/flq5Kr2Le7z8QOl8RMS28M+MVi9WTKs/9I/sRjuuU8OC
	 xy/xaJ76AhCB8bjTfoxbsqkgZXpUUPWXMnh9UdSOd0ZICKlQuGWpDrd5Vzq3H8skYP
	 YnC2D8x3wj4WHjNQBZWrysuaA29u+kCZ5195FXU9n7Odl0yRmhw5fZyYutyXzpUh86
	 c0EZ6lSp83+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A747C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166921625436.28744.13021641846125299315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d01a1a32a8043b151954f08ee7e6237c970ad2b6e8148c479ab68aa312149b
Date: Wed, 23 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669216254
