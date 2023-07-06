Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D25185A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:27:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F6AC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688635629;
	bh=8C7NTm48Kq9qygFV9Gi99noYDt3t87gJCRp+eDBbx74=;
	h=To:Subject:From:Date:From;
	b=oubY/GBhknOzahjPEK+MsKU8Uf1Vzju+8TC1VKyLJEkak3+Lzo+wfyPxJ8nh+we5J
	 QDHoO+acG7M6wm/cRKjkuGNoD5SrkOtkmQG4gQC1YYYJBsmG+7kBJz1c0ozw/QcjIi
	 uKNWawL0AXBrumuNxIoqd0FHgdFDS1GYQlkidHxKM86N/xGbNvfh0d171eo4yZ6N0d
	 /ClrokccvgTIYxD7WKbVu32IcxOaN9ogdJNE7yzHwFla4cdaG6rha/dZDr1VtvFXpm
	 4m33pvp48/kaEeOPDvHk+giJt+hlBThd4+CTbLDCmeb9/tqx0bPrSe/9K8dy8SHvXd
	 rYOwSqVbAZFJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE27EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168863562884.1304.11045974866088061443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5aa84c3fa3576b4568604485699f7f15ba51e7ce24f3371c39b27eb041a9093
Date: Thu, 06 Jul 2023 09:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688635628
