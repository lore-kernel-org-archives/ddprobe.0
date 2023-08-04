Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1066A1FC8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 05:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76F1C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691127788;
	bh=Q+PVR4ylk2bjvi2EYRKkbsrUvXO62OZdU4xPPaKyX5w=;
	h=To:Subject:From:Date:From;
	b=GNZ3eXfhXs3BMc2xeBXLjn6sqotmc8+tIoot41Tm6ZuvC2EiuP8Wqs7H9lAcqoNVi
	 Z8Zj3OUKLsyt81cwhPTVgPR9s44XZQ5kHeki4DlwcRamTd4L16Py85KxoH1hAUDo/T
	 sIwQWPAX5nPPL0m0befUVqzif9D1ssjBTyVtFtHlYXyA/TT06vXGG5VYZbBXx5uBtI
	 45BKi5xj+fnZaksNfDEK3slaT0rpPGL/1ht/t6Dj68IsflralvVmjSqV6pbD1oTslO
	 C77IAhHdiKh+piTohlHTlM20SbFnmNLOvfc5Z7Mej5NkGf3xRUkkkJRniFVn8mmKGl
	 UsbiTsLIq03Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4391C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169112778871.21187.10133289407502817971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895880ab9a177dcf5ad0ae88d3ed79a36a89bd0df37c0b5915b8dd31ed69a7da
Date: Fri, 04 Aug 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691127788
