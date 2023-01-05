Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BF18BE0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846A3C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672927887;
	bh=+bUyS2CREwxZZejAmtBPpV+FwhESuCQ7CwB0LIjzZOc=;
	h=To:Subject:From:Date:From;
	b=eVyJRE2eTGtpxeNisXQhJD1rwzKM5m5hiP6Rpz/aAAtM5zN9ujh1uDKHbSxo4kB6N
	 9k8kIGFrfWVpUBFiA38mtL5i/aBOg9PesTRBxc8wt/Bn+tRzKk1F5uMhS/WNP0eIxC
	 KBoigaoQvnbQ3tV8X8fHrioXwRL+MCZIAstrdVM/69HPBSPLzOJlwXiLthpXsEFB2j
	 HVdDB1cabpNTomvIpkIsPwOkg7mG/NPl1PMFgGqaLAuJlaIxqZq/AsTLHprLiBf0aS
	 fOPZTjuTgg3qPf0SAlhyk3FmsZi7PhaGxFH/nt9GsZOga5HylmP3YyiszhuzgTvWt5
	 m2qS0Ac/ZqOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E17C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292788739.17383.6605432035354503714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897e25b970de72af9640027f3547a3f6b6a8c590a5477f38aaf0520419fc76c3
Date: Thu, 05 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672927887
