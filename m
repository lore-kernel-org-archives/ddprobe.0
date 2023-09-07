Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDA910965
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAC1C32797
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694099048;
	bh=EyYluzgNZmB9X+OxO9tLWi54zwhyjjStKWoW1oq5Ras=;
	h=To:Subject:From:Date:From;
	b=Lpu8NPnj7mO1aPeGRRcWTr+rbHFE/vK2iK361c12C2b+EDbX1aDm4W0ySaVyj+PLn
	 bfx8X2syyJ5JnndnV1DH/XUf8DPYRxmrunjw79rKHiyOzKu15Kdk9KOTlKtI00jd34
	 4sjEmrAyMf+8AaRBzjq3rn9e9DQNYtZhL3vlSYOcJTv2XNy9edAHa2CBod5XiuqYif
	 6Dk/M9BJfhjc67Ztcisurkl/ameanFwoIAwFWtBoAOV5fz+X1InvBdTPGGPp1bi1we
	 HBv04A15BU+el9VkXpH6dVpL1MsEYGXJL4iHCpst34v5BMq2dsBT9xvTWQoLrV/gja
	 JRcRPLjC4F+kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2607EC8733
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169409904878.16416.7796665510950221752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962604e01f61e97483c3fbc825ff7608fa9fe048e6fa24d22c3e0f48b795fad3
Date: Thu, 07 Sep 2023 15:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694099048
