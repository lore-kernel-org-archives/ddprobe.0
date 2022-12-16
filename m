Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AD720E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D82C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671196887;
	bh=1zVu4XtvS69u9wz7Amwiw4hnqtFCsiPcs7F2QooNn/0=;
	h=To:Subject:From:Date:From;
	b=gCPmrSsvd3U9KTF+EU8ru6a0c+yrR4UQV0uBbQnT4q03pfoI5IeRZVOdnUPSFIM0Z
	 8rLV6gIDVXQAkRAdJn5ViTqV/c2SWNdJ+nJmHLbXpYGtaFNS6DYMhxcAfzCX4xYlUK
	 Nl4AUie0iRHs0/a8IbnWlVy0gW40fMzupPg4DMXwQpNe2tUW8uZXr6sixupb787s56
	 wDi9YVD94I6AisvtavVKPddUk+HI+qG1VZ6s0PcgHqErSIB/5SZRPRPF6YvEbzENLo
	 OsaBfHZDKWcZuA4lX+eovCW0STR0i9pua0ErJeZll3ENQFclzS9FC/puYJlcoCNRps
	 sChpFgtYfQn4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64237C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119688740.21652.4105662275898087515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd05b830f6092138584010e84f4c6e1c31b340ec87917bec669f09c2a7ef7ad
Date: Fri, 16 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671196887
