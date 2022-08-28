Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA537C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F95C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661720452;
	bh=aa8z0jzlvapPIgLp0FF8YNIE8p0fbr4ybNSsM+pWxgQ=;
	h=To:Subject:From:Date:From;
	b=EV/Lfa0wfrUPl5fcRmSNW5sdMn9NZ4kAiFAqhcvaEP5TovwhOzwzbvHG4hQ2NuZEy
	 5Xo9udfLDVMyOlpKOdZ8XuebJKUIqR8fsoKZ6cOavsZLlJOGv60yfnRkq2FyhXBRzA
	 HBZgcqwpsN9mGJJI+qRe7K3uOpEFnfhmbyLvt8uB3UAuD9PseiSAFET2cKFcqI/UFK
	 4khk0exzwxvIGyIikcLiPMK290rwVhcdoPKmR/KOWlaWH6hHR7471KwgIfK1K6ecT0
	 p/wtewfyzp1r9i4aRFzrD4VzlDKKTwry0IOdi5biLsGrC/sqKh9qQJjnNThWShAQsz
	 /XR2bfvstipHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C56ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172045233.24004.7769026801144752986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ab163f6a63512fe7cd042a2ec64d5d68f2f3a416e369c60e8c67e7b5d959b6
Date: Sun, 28 Aug 2022 21:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661720452
