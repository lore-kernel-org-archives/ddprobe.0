Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBC6747A
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 15:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3357C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 15:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676561525;
	bh=2Z0l7gTIgZ3kVhOnDRNwjW7skWUZ0KV6/YZzdx6y5ak=;
	h=To:Subject:From:Date:From;
	b=L7pwY32f+o1QKpP7WCQClwzkjvQJdHeBhKjPl0o8R9A0DonC8kzLCHNCu9x4c40Dg
	 hGGh0SFbRz96QlFKBK7UXEVBsCMWTzmqxK3YXggTR8rDYCzA23heB3FPyB4mu9Oyas
	 Pf9tvDYHVHMG4AzQ0tguNNeRiFPGWIcuPMyIoQ8KugFC8DhVARgKPIJQg53b104Leg
	 dlzRcGnnpwzGq33XTQmTUOeAMmlKJHYHAZvMbcvoKDXnEfQEOP1qfKbzAdltupsbfb
	 nlfpHtUH/YP/Y8irCeMek8U7OYfVSm5rHShcJcJd6MAx7DlJlfsN/7kJ9TseenYpHw
	 xkmxARoLhqJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BD9C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 15:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167656152574.27992.14252741436842699316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9378e20e4463783e8fc18bd7943bc204876d73fb774ff70942083c6d5aa5f360
Date: Thu, 16 Feb 2023 15:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676561525
