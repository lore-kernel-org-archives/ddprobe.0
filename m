Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC28E10F7
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66031C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668330654;
	bh=8uA4FotyNgwlgXgYHsmQ5ruzloqEE+xMpP22nyZDASI=;
	h=To:Subject:From:Date:From;
	b=lIWwx6YGmbeNh0DmVRJR3U6/UZ9F7g+Ux+IW3NKMEh7QpgwhN9Iyc3Tb6HWKFhdPL
	 gfaYzFPlrIm4N8wFVkadTeXJeCfBYt20zHdLXJY7ZkXZj+U37O3eEfCXTJ0m+GqGWS
	 O4c3+pHsgmTNo0tt26ZE6DxgaRBdepoBeSGQZqGTNkZG/RFwnPF9M+OZ38jmCsq8hi
	 III7C8N7DhQbvfVd3btqezMGmIL9myZ5UKNep4SYyaWHSoJCkAv2neVQYANF9Efk8p
	 QsDzy9NPiGWOU0J53JAbU1Yy8YIsEuHvrp/P5m2w5eNTSdKI6X0pV5td6LJwLl+YGQ
	 6j2N0WYyWSEkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E438C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166833065431.8955.7318843858506327283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1fef034407fcf93878c892da7b4dc3dd3a4282d8bb8f4adead5b1afa640c73
Date: Sun, 13 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668330654
