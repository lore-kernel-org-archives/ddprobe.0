Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2AC524F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784927434; cv=none; b=qSsDXLrFaiTmA7317oGbaDsmpY2tAnnHp4G9x2Ry2wn3t/OUUQ2nghUlWhaU96Iq8Qx4evuY5lqCsLZSAg2OPN0T0SbIdzEDuJssVwGzr2Sg0C8SictHh6+0cKa+NrZvnWkIVxJT1pNugLsVDx6bxKXMuM8iiKVGo8ZnqpbPp6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784927434; c=relaxed/simple;
	bh=weacNcm18K1xWa+8ykfADPOo2eMqDMW4rNDNiqFfBmM=;
	h=To:Subject:From:Message-Id:Date; b=H8GWTaaAXenjXTQQVAf4zwiByLi1Ab8ZQZZSjWl6omXUIAIulniTtxOaDDvw6x/8dp6FwgknzUb8vXKig0N3E5lV0RESPygkAzCHLjIRxAXtUzSs6RIhEpNdLz1HkKld/rcbZLM9Atwu8TBX+EDib47v0vrB8elrXuHrN4Uv/JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv6gurVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv6gurVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1965C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784927433;
	bh=weacNcm18K1xWa+8ykfADPOo2eMqDMW4rNDNiqFfBmM=;
	h=To:Subject:From:Date:From;
	b=Pv6gurVW9/N4HIaJtJI6gi+wd2qDCVnqbHX8dDznKw58KJ07LKiguiOCyZj3mXVsM
	 LK7/AWXOJyyOV7QnkLKpyXcFMDj3LKhWdAff5wGeVQb5BWIabEkYjTSlsZjO1xAghA
	 R5UwH4PH3KA8vDL4aWXZizYeC+1vzyf1Y5Q6zOrWFP0XWSuZTnMnafLtXwgyRT4UBj
	 sPJRReSx1r48j/tAjWGvJ4Zlcr5Ju7w8B13YSUtpNidh3eRITDBMcvrfXQjp5y4sNh
	 /sflsf+pXqnf4sBu6lf0JIBrGhtvDVQuGkJi4zJyb3CPgNCsDz3bpeJWt9vEC08fo5
	 RKtScuyav5/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC142C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492743369.22466.2587247153978588844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41154e65189912ba3a706845478e509ff7a365d89c493162d766a35a5b6c5bac
Date: Fri, 24 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784927433
