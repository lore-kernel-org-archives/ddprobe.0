Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391B4202972
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741094935; cv=none; b=K5OumXsh9GEEBsPYN7RwrurLEZA3vMX5KOGOtBivYBvHt1Ai7XJm0gRW/wxwGpyPOW29wJy20cWJ7BharUACPIjd3B1glua68x0904gwBLDba35sd3wzuatwRFup9xVPHelmHoY/2HmROzG7fxCRDf1AwHVc6rySTaEg5BwXVIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741094935; c=relaxed/simple;
	bh=Zuwpioqr0AuzSJVTb4TW7npQHyefZ9l5J/PRNOdtgCc=;
	h=To:Subject:From:Message-Id:Date; b=nCkn5jDhwRdTe45YAd3L7lPPhJ4UjW4XySgDqIcN5oAtUAyazCiCdTHloQOp2gSjhat/48+nYP8BzQ2a251vCLEi9KifKK36Xv0TTQvWB8tPkySVESeLIkZcBCkWV7E3wsLw1nUf7apGibq7jFN4G26upvgA9TnMlZ5hY/vU1SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1V7swNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1V7swNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A509FC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741094933;
	bh=Zuwpioqr0AuzSJVTb4TW7npQHyefZ9l5J/PRNOdtgCc=;
	h=To:Subject:From:Date:From;
	b=a1V7swNWcxF1LIuNzToygYiPn1lrmf/3381TXzgszJ3iVhOp6ITsfOx+JmxDCNkX8
	 jWp0ikx94qC41/QhQWKyF92ZSisOQ0AV1K4tSQMxYDG4Zq3cxfzGHuAWz6pZjvB+6M
	 JpmuBPNbRE19Yz9Vf9PHo+NhixI7D8FEkjjLUNhEm8VpkBw4zpIV8ArDGz0rVl107p
	 Z1MHBTk5Mn+Y5i3bCDNn9amz7N6A+UeN2vlsIQuoHQtQdftYIOleBY5XnXlRHH76kZ
	 2HCFyWCWHZMfbw5oiAfOMtl9nTPrxQxORHpO1zis1QdR1MQtv/W8ldANC2Oaa6CQwt
	 sGswCo6jZfakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941BDC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174109493359.5849.16021003102382682379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae17e0a6a55ba0e35f9de0240c6676f9a57e8731d29a7f9fd05a858b3ad4b83f
Date: Tue, 04 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741094933
