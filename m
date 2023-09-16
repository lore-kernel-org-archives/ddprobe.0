Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1451C15
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 02:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EEDC433CB
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 02:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694829908;
	bh=4LsBJ88UWEbdykuLpTPTakqkwDV15/Ioh1nK9s2efrg=;
	h=To:Subject:From:Date:From;
	b=TntBF9PcaK2lu6IE/ThzJ0H2T9DCBjQmg/1KwKELkreI0ug8LyPsuZYmuBdvQUfve
	 nSqZIaUNOx35QUr+UYUofenQPW+Axfm3ww7Jxn+GYl8nGHKBqgaoAMm9AwztgIE4Kk
	 LJh4YlmnGl6Ayi8AN8qy+OJe8/EtAgVzuK8ETSXKtJArNPYuHIeIvF/0v1aMy4K4qv
	 tJl1Q21Ey25y5SvoHc5AsWp5F49PI72fUMvQcJMyFeJdFDJ/m8X1aGlj9YsoBDCe9R
	 KYAOAtfp1Ca0vHnGvq3aaqIUeug6j8RIEiL/FUMQV2thPWvZA/ZCXuex/xtEJEae5G
	 /i2zg5lq0HKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A578CCD37B1
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 02:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169482990867.27255.10505855007882488318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47334283f312f719899d6582f7e9f517144cfcd1e58a7e03bb62049d72ed4e90
Date: Sat, 16 Sep 2023 02:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694829908
