Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E26B198
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671877887;
	bh=lISxOjhDF4754eWExL4P7q8i9ALnAebCiN7hUPHQS60=;
	h=To:Subject:From:Date:From;
	b=rfOX9siHW0sEX9UlLjoGfly4Lms/LqRP4R4+GjCnVK0N8+1kDTEkmqJYD+nB8NTa1
	 vsernyZfMHAjiTwXuIqHLB/zIIcWm5Jxj+006OH5e9QszFUjnXbk6bqrzJpRKkrRhE
	 duA3EQV6Hy9NyTDm7QVExW0sQHc+jPhqYFBhWl0DoZ+CiW6gUYl8Sa+edZYbEsixyr
	 oeSeG1NxlKcK92FfBXjKdqR0mJ041gIG7RbyzR5/WHifN+yxdUQVzq11QAeHdh6KMp
	 SXwxx6FvmbdIJydmPSxu0HH0G2DsaLYO5QDZUh/SnolfNVHQGeUwUwbkbV0YsMXnI0
	 sZEtxjujvzsFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75C81C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187788742.720.9744886092757860643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9eb238066d9f374a26200928468f1893b1ef24ed6d791b31bc624d9f8a46aa3
Date: Sat, 24 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671877887
