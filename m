Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6871C29C
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ipq5BH1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB9BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700495296;
	bh=IF0KF9SZJU62Y/e69imyuL7K1nYhGExMYurTIoAXNK0=;
	h=To:Subject:From:Date:From;
	b=Ipq5BH1azPXmqfbKoG0LVaI61Q4OgPed/WGus8lattgs0mdjrLSQ9jg2UtRHL5z18
	 Pg2HqcBFCanexlAEtkA4JJp3E19lbwnkwTpAubQ/wIdXyG4+qQWMGDKOMZHiyeG61P
	 Xzd02rNPK9/9YAhle90mGlijys7ZdZjV8hS4oYppJ4XZpEPJjUrKw2Lzp51F8+7RxK
	 gaQJg+dxioWMPKYjOYukcT8KTFkyri3Q3SghoOhJnEMwLnqqhN5DDO9wMPGwmtXaeD
	 hOoON6pOur2qMukj0eHLbQnWAMm/RiZfVMKpF1MsyUEgOgASs8q7RUTKHBAuz6rHgH
	 BbGr/Ey2GEKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640B6C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170049529640.21015.15644748642676269921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff94dc2efe88fca82fe8161f4d7d9511ec69d148c1311be619bed79c060f6f9
Date: Mon, 20 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700495296
