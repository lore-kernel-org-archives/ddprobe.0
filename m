Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5F713AC9
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 19:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAA8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 19:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694893508;
	bh=AnwZhcQK3nDNiPUvrG5Wcse3NaZZ1I2k7n7NR8IITwU=;
	h=To:Subject:From:Date:From;
	b=mb+sY/UAk4nfDKGbKO1IPkEObxQnTayjfx5oBaD8m1T2IVNv5Zu1L1jeGSV2CATij
	 nJ5SZHXvHS01VUhfvGdHIu1AlOKr8ThqSMerFTcemz7s1lyxZsdMqS+l3oz66T46Gi
	 y5/0WrXr2Egi0S983Y63C73T4+yWMYokxHOJ0L1cGA0JWN3/PwBOYcq9bhuiPdjix7
	 l0O5prcWbLX3gCCl2nirVE3gCMlGSpHZd8qX6hgoQ8cthLAFY1SpJQBcS7oC/K65bq
	 VC7M58BvMaGr4zNcNs4/yOG3YN6lx5z7aALdRIiCZm0q2zar14Ra4C3IE396EKHYUY
	 J8DKWUXFp0wMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B08C2BA1A
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 19:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169489350866.4758.6245684196399709606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1142d6b743a8aa33a58c888a771b0c56dd135ed30b32991ed1e3ecd7768f46b7
Date: Sat, 16 Sep 2023 19:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694893508
