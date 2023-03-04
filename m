Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDF37E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 08:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7895C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 08:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677918425;
	bh=MyzBXa15SdJG6JCYEU3LZ+xptlF8VPjy73En2CDpwTk=;
	h=To:Subject:From:Date:From;
	b=k5zYIjpHYLR3R4GCGWjbWwLd7xs1iBWAKhYGWMqc5eL/kvyqD9zO+sd+RNRdDMb/1
	 gxcor4xZ2GFoHygH8AxdDNY7AphuPEg73XxksXvOSjeKtKllCSF6ZDZhNA8nF4PMXx
	 49N3O6rMWRm8C0zEtyIAhENHfDJXiPuMZckw4rZZgl3Pb+KxdpciD/stjJoH+lxTvk
	 xuG9ap+un2PHVLTAxYdF1xGhyTytkeBkzRbCzdMzhulo9Ke4WWXwVFnZfvd4rar/dO
	 1NlqIKDJ+29Ou+akKnXbVW6mKs1FKX9Duu7M+Fr8msrzSKbUPXnv+an2wflxoQGfWO
	 bjZaIlSJgdCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA67EC6FA8E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 08:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167791842579.23516.11335314192850372245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab127133e4efb82b279f9798ab7548b911f47ef0e8ee3f9fa0524fe7b8ee5d5
Date: Sat, 04 Mar 2023 08:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677918425
