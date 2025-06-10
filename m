Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20527747F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749529794; cv=none; b=VWsG2ZcBeTbrsi7Je9lqsBUIeOdAjbnL+k2+qKakTVmuBxenD+acOJ4HVc23EB8BFIo9ytKwfmtF3XKSmbgsxgdfDAnvxxVkIbns3FFq359paxZmmgojTKRvtvxBIwN5OQVEn+V3qWlwvS/I6lQjqMh9xP0s7pWKaArPVp0VT4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749529794; c=relaxed/simple;
	bh=OpOkTF2ousqKyI2rKrFaItkdPgTsMK9U/gWCmR2EjW0=;
	h=To:Subject:From:Message-Id:Date; b=QhHISY6e2zyh2O7uq1+8/0H5u9LmNMp5jfxxtWpZOdioLhgi7U5Kc1AZzSxlHOUDyCfcyzq7gaLzVm2ItQlfVMrW6zl7hlcrpGrx/Cfb5faVxGLvlZbGF9dnGoscZqKb8QhsYw5vbejMzmKR6j/KZb/rclBfL53qfOFCDdP/p/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po6q7Phh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po6q7Phh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DC9C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749529793;
	bh=OpOkTF2ousqKyI2rKrFaItkdPgTsMK9U/gWCmR2EjW0=;
	h=To:Subject:From:Date:From;
	b=Po6q7PhhxgvPEMNl96rnRfKIl43vECp2GBsgjwT6ZMpEeFn0ZFUGTrdwb8FkGvSXu
	 YrTUROWoSEmrVpfIAja+nqfxjjrqeU/Py6qZqsGwe6hyFDkZS6negwcr/+jNYinKb1
	 f+XrcM1pyvQviWAM7j+A+hf66RCKchjRuPlKUWmqM0cXC8bVTGEUXCbtJyLXinGBN6
	 Zz5Sm3G/ZZ5RsWC49KlCovB41w8jsG7GdumKwfElaTd2tAQ4BCJSxOGAxM8WOJ3N2D
	 upKfOKKSp/rG3ounuPTfIrAVu3GfhW2fvv5HGtvOPr25Z8upt+1EaRqI75QsZER1BW
	 Cum1ppEnSkzsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91427C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952979358.30257.13617974785816499003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08427cd2ee202cb00bee5f2f060ec52a379bb36075ce66b36d3f048416fe4ab
Date: Tue, 10 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749529793
