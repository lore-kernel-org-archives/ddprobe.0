Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A9A64D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D430EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686884948;
	bh=27pXSWA9NRlP+k7xc/kq6alZMsjvEJGnPx1PXH6BlsY=;
	h=To:Subject:From:Date:From;
	b=C04HDRkkPohG4NBFnJDgBb13a2SuhDnjX6lADBkrj5eAkcsoUj05EckZB3cxAccve
	 R2d//5Rg521sQdI8exeSLnl/qz1956gPN9V1Ny9wx7msXSI6e6JRievdZ4MFiLCRuW
	 9Hg8fcgwVfcB1XOhjmUzEb+d7D+qOClXxkfOLduAppLmBJIqZcNi92eCs0NJreLApf
	 F76qKB05m3fMkywXhIVPYyvn/kEy2iIdRmr3een5NmR+f/sI7ik2XnabZbnzxCt4R+
	 PoHTyyHGI/rsl/SH7vsPqqBiqwhXEgLy0HeJo2T452YSsh+UJqi1TSjCq2o8EFShPa
	 xniO5eaUvt5Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3293EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168688494872.7459.8670057174873911825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf1425c6f431f7b2945094aad01d08a3a8838253ebc5400e4e7eb8b71ba2936
Date: Fri, 16 Jun 2023 03:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686884948
