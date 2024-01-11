Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E911FB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7gWxxcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820D5C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704950896;
	bh=Clw7/0SRiMZItFYIo9sTj+GkY8Ej8YhJq0Ts3/4HRXE=;
	h=To:Subject:From:Date:From;
	b=C7gWxxcdSusuBmkYhTgll8rWP8LWFq1MhFm9jx5XiYaBSHW94k21x6pyFG1FvO1WH
	 AOTd5faedquapZLoIJFGeoTvvmgJxp51ae1TUnHmPtX1VAMmDNUIxYIURRQTJgYot/
	 VMhPwd/mFvHdVj9IaYArpxPgVNlL3zWaR6OGRmCKm0B3prE9EaMPTqBrI/ii/T/bDH
	 x+wW9KvzkDf1yRDTLjeBLVVnww3Sk4PugKiar9DwBDLLMSWT/RvDt0gxiP5uZ9clmu
	 mVoxsaF146FkDsn22f60eKa4boC1JomE9jpmpy4NpXWTZPFraulLsM7gzvfwXXf7+K
	 3NLQiVNjRxCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A24C47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170495089637.19177.4879545927071583902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80aef972bcc701da25cd5778388d310b2538232af74d2e3b842bd40457c4bb81
Date: Thu, 11 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704950896
