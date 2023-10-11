Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9DF354F7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIEye1Wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCADC433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696993028;
	bh=OqcY0HWc985Si4n88F/q60pBe4EvFtqG43h+lfvzGHU=;
	h=To:Subject:From:Date:From;
	b=PIEye1WjG5OGNRkKDovdoICoDMScaGIy6OvpxNyxJZ5GfCVPHWHzrPmE5NL/pAPO8
	 spK5M1cUhaG3id15qbgwDhvdjA46Ie2S9VCCA9aiVIJUXIvSohz8gNjjvdQwbc1OyT
	 1LoEAxFYCKdhk38qgVeOhwIZke+Iz71v3TYxBuMoETA1IMaozJZTgMieyk15HBiCUU
	 GS6vk49VNZdNl7FaEXp4jxQ9sRPtwUlxII3qxDZDfvz0+Stsbvelb/OVQl+YdCpaQr
	 X7tLqbpA8bNfRBW8rnu4Mn2ZijnTjowwuptbR5v1ntk2cKv+9WtLA5lpaSpDXtb3iV
	 YHYrLDhlpuuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA96CD98E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169699302870.6040.1582289853508198142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ebe30191d254768fcc28c02d9e247512d4adcb36272ee9e0bc0c71ec346dd3
Date: Wed, 11 Oct 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696993028
