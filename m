Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762058467
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 06:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8471C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 06:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695884168;
	bh=H3sWmdC0AblEU+odcg1zYdLQlb2wP04K8H4OZG8BNVQ=;
	h=To:Subject:From:Date:From;
	b=LPmo4aMegJmYsEH6skXuoIknQPitLMYIwI+MsSrp+hMXWveckI1U06N4mSuvUJ3D6
	 Zfbq6ZLicD73C2z7F/Zm4hZDMvVrbgIrnIFiL1c9vnBbPlTi0UIV9hx14oHbdNy10c
	 TzO/azFtboVCNXLmM5LJYiwCIxxZ6LnNoOI6xlKTG671NTDajXd0pF63GC5IGJcDx+
	 hel8AbAHkUQydMBAorEN6PdujrUaNKKJBFa1GDTcmoq1K1yr/MoJmM2eKU0XHLd/JK
	 AvPBcwdRrAHiKi1a/UEcgVvFGhp33NLdPenW4hcK2CKuIkAt/8c5OjVEQWloMPkn/r
	 r5jKm0PqeTI1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4794CE7B07
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 06:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169588416875.19427.7074609186501527248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e3839c1d43beb8e4b1d8cadebaabb941834a0e895ea6b0ce2fc2c27d486921
Date: Thu, 28 Sep 2023 06:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695884168
