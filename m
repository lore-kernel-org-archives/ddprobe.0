Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C25463A
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBBCC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675920065;
	bh=j0WVr4VwMIE0ni3ND1ocXrVOgQXobFpUlpUuxtxgmxo=;
	h=To:Subject:From:Date:From;
	b=KvhtWabwjtW/Hy86cqW2ydmPm1lA1HRARc5ADZUkilbiHTbQ8Y8RdlGeGFKX1M44P
	 9Jq86QgUGQQtsv4AWWNxq6IfJAkTCywvOrlvBxasa1OOZbPDxasrnB1eZ5YUZfQXRO
	 yox2+iApbejls2kk+4HQMGC/EOAikGEy49nwv3FoS9akTPY/6JXUbZQEjzbydHhwzZ
	 +RdCWri7WjLZ4QoAQzMdZfSbLGLH9eCxcFTLBLhQbTrmfH6bjM+QtnW6aNhJqTvTEd
	 Qq7JUTJo6lcWOdPCrG74K9iIpULHG7cmTam8t595SY3b+2/KOIJ24pveoxaATC3Jy+
	 ygn0CRnThbUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE73EC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167592006577.25367.5563189185514374462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42ff4da80cff9189bc3e70c950e969ef546e8828cb6afe07e59ab483c0daea8
Date: Thu, 09 Feb 2023 05:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675920065
