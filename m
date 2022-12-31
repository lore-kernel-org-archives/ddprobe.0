Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4AA1FDE
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B0B4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672467087;
	bh=9tdmzx2/zN3yUrEJi7wcQnNSHv5ryJ4EXpW1Abl6AI4=;
	h=To:Subject:From:Date:From;
	b=WN2WtFjuIon15ffkt1gvhyVh7mNpVmzK12gYk+erkNFTjD2MPOj4ujCjK82MnCRi7
	 BfO05vAPeRZCFPWPYb7Lq7bRMX/oiZU5kWUdRRPjXB7eQ2R3+gSRvVDJuBgPQQ8xG+
	 cnQBrkz+FgiX8bQbM+/5jQUUplUinp9jSGPY8ouNu1jb9rEDgKB6CI6mOPzzyGoTBm
	 PLDIYt8VT7Olp6EDrrozGDa1LsR6EOQUxDMPDTMGnXkqZ3NafOID+KG3EFA7gw8Tz0
	 p+NAFVyR889LSuM2nK2oFlq7Qc+timuu+kwaKhRUS9jrDoqocgsq0FbwmgezJ2/F6D
	 CAc6JdNLdAAqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8F5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246708742.13267.756689416102652775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508b89fdad5db7af82692cd411ea16781f159f17935d93667f74cdfd6dd466bc
Date: Sat, 31 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672467087
