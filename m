Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725C91DDD4
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4083C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687797188;
	bh=Nz81JDUkmpTNWh95Agom14AhrecK/FZQkIn9ouiJOVM=;
	h=To:Subject:From:Date:From;
	b=LqYyMTALpr1N4Bza8X5xOulOl2MA6wWQql3KjHdlahOr/LhbEZ7cdAM7726ROW7sW
	 XaZnmiY8zPrQnB+skngp2gVzl/qSShR1Qw/sic8RLMdFAjsOxsPrpadf5SGIE9e6rE
	 mkZV4MVEQoSzwtGOaC+VWldyDLFwYLmQRA+YHg/I+Lq9p3BPeEGFlvIy2zV2V856vD
	 vm2sISnGXfr8J2TqjBfgPqtiCop740NDVljVcvsRGzuftK1K2zBXhJ21zxaW9PfmkR
	 Ky3ybz2L3beT6btJcEYJFKPe80R/YEEJ/cFl5MvErF3YZ2iau+LKy/O30MINrKCu82
	 Do+2TvVQWLSiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E9AEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779718872.5553.6671519004640304188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d2af7bfacb38d293e378540b9c434de23997a2c32419fb6e365011f8e417aa
Date: Mon, 26 Jun 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687797188
