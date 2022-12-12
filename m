Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB85953B9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E880C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670872887;
	bh=MAlNnuYUst7m3j2Ya9VcI81BJIBI/dkxRjNq5+7a2KQ=;
	h=To:Subject:From:Date:From;
	b=UldOmL4S8S+EJt/D9FOZFzIxY+VkwsylJYSqaDQ0umvISbNldwf7vqSyUkXrSDxLT
	 oIENSEBGEz5dYY0vCcuPDiI/gOF5RT8aNBZ99rpgdjplxcuO5au0DXqdb8vzV0qNeR
	 9JRgMIpNVZM6tjmJq79Nm0pIh68ueFcPj2CkhEe8D+H7uxyWmJperxPb1Oz2MI7LQ1
	 5+PKqKtRyg5LCLOu8vUDFcb/bHfTOmnXH76EQWhSCrhBsEB9us+ARF5eIfCWNjL4Z5
	 y1Au1MYOcuBfbvS5ygKqOAn+2dGdJyUn5/37vKdHUI8F4jRHCai5pTLwh+7yXOn05b
	 oPMNl2IoOsrYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72AC1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087288746.8072.5063481296126524265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1fd27b53d073b6959084c14f2683ca8eaff0169d51ac251973d98ccfa4e8d4
Date: Mon, 12 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670872887
