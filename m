Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B2715D1
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 01:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F98C433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 01:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683510485;
	bh=lmkZ1Xh6LtkvwVAkadSUd+KCgF72w/G+P2cZri5azYY=;
	h=To:Subject:From:Date:From;
	b=ujchgdOejuM3LV0PHoS/lw2ud1yx73q93/4Nfpe9uZYvjVAJBVGwGaz0juyPg62Ux
	 ObVztWbtQoAlnVYVr84EyfNHF1syNYtH1wO5RHl8lU30lV1PBpuOjzLOogvQH/tICA
	 CN+kJteS/+hHJn/Fp1/NHnUItIgtxCUjFQU9AkuH89yQM0Ag2tVx4RaRzZIJp2nhIy
	 gBAt6NgafWDFJ4V/79lyflosMEQDECyT4Kd0uMd+XS5PgAHNHPK0PwQxAM1OqiB9nm
	 BSvkrzlmNgJh6b1ff+UzmyQRWFWAlcRuYTZfF/HHa3UhAjqXz0yi7/6yLjJb4Ni717
	 CLzwJ2viOverA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C922EC77B75
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 01:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168351048578.4935.3235694219824281509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ad24c3c894f78ee0bef61eab8b7f7990313fff00d441f5e95626e7210464b0
Date: Mon, 08 May 2023 01:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683510485
