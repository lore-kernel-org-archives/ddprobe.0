Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437F0370
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 00:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A7AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 00:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685405526;
	bh=pgtlvsJ6B/Tcrp/2hF4cnJJlGpN8mKCZWnIERbmHk44=;
	h=To:Subject:From:Date:From;
	b=OBJz3NnEwKJM1I/McG1uFAn3aGp4F4lBJkNx12S9Di9HfcE0tS6R162qYULRPmB64
	 fj3hH5PR+CFZvJZKiQIJYvPvSb06o149Wwwg/prMCDTwxCF4t07qfQC+Yfn5K794n0
	 qPtZP3sYQWWZcJWtBybsjncfWkITtsQnUpsMpCyA4jl3zgEU0Ory510smSBtWtU3vO
	 OHMeKFPnc6XTTep1LeP+9NSvA3KnKo7k2IWnRlxLC8ke99imYc2OStKf0GRmhVjhjg
	 GtJmt8hrKjX0bXb45/R+a/+zmXy6riwyPeW1Po3HC3MsnyccIa32rgC8c+Uz8Y8JQ/
	 O8i0IhmQQpRUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9DE8C77B7E
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 00:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168540552578.3883.7680089517029209610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b6dfd616488a27484e0d93728714348f57ca4e9a44ae54436bd8b9a7fa5ef4
Date: Tue, 30 May 2023 00:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685405525
