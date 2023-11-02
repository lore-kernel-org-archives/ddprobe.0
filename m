Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0183F2F2F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdnrqclk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BF0C433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698913696;
	bh=9ypzDZiZcjAiMxfjQdJQajdKkKg3Kg4HK7w+tcdWqXI=;
	h=To:Subject:From:Date:From;
	b=bdnrqclkMr5gQC9Mp9ntq+CUvODJVulSQssENWRH3Lqipy9R+4Anq7++MQVe9mE2u
	 t30OS+AxDxk57F8f/6khIDri7ivhunJzqXNZGHJagH6g3U3DKWY7/MrwXOOqAarP6R
	 PN1R6JpKFlWW1BYWxPRFqxpXb633NndtpFlfQKy0qo/fTOeVM3vxNjKykaeJ0Csc5p
	 KDNuySTthMfR9OeLPwto+cEoG5GL86b3e5lHzE2hSWbpvNeiwquHdxKqHhg80z9KEH
	 zwDF/ht5wD4i4w7LH8YgseBf7f6zWD5bzZKDt29iTQcwJ8oo9ncrOr0CvgcVJBZ+bZ
	 AQLRvKzlMINXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695E2C4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169891369642.9859.11193379844537340267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9fcefc6f6370ae67379e53f9cae03444dbb5808150e2353f17ea436d2259d0
Date: Thu, 02 Nov 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698913696
