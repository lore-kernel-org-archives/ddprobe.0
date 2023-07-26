Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530EE4C99
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C893EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690359728;
	bh=g8mk7F50T9tYPYYHrkE7+TsaEmsT3Z5YRn3Yeiz0naU=;
	h=To:Subject:From:Date:From;
	b=H9tYLqu2w4A72LPRTl1CDnolK9theQ9WG44vdnrMvPiYNyc1/5gChziug7baIX5gk
	 M1t4Zx16Q5Nvog0FIUvD/9fyOm2ji62VRrimDh2XZuAIvrdrZcwxS16lBMKs5XY6Dz
	 ZdKuSYOgnV49kWnNAHFnv43kRnRD49kmF7adZWNtAYOVA20qcjFqo2K/qLSktOYxuU
	 6MeUuJjEJCy8JEqPlV1IVx6Vpo0fZ+yNyj4K8DTP1WhjSa3cMcgtaH13MO/LEJVfYS
	 qUKLGbk+mD3UOe6nUVORdpJ9U7b3zWTIVJHi2E8/OoOiBdxLCon9s7EgGBJAQNDsmx
	 yJGlft9FmxsJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDDCC001DC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169035972870.25653.530334693345449565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57db71325d62ac13f189ff75c1ab9319b17570f96c7397d6701af28520c81f48
Date: Wed, 26 Jul 2023 08:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690359728
