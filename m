Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B14522A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 22:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EA0C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687212128;
	bh=TT0cut6M4L0TlBtY/52qio5eTwCCNz8jTB0ogk1nrc0=;
	h=To:Subject:From:Date:From;
	b=dtaqnfEt86glmtYB5NidKRJ26lkyjxZDkIeIocNwo/JOPrJJ6HlVEYCvdaIXlFI7q
	 SWj1phhSm+sj5thGNtF/nmqy2K7bpyFsxoVM4WiP5ITq7iaAMDwq0SHGfSX6vvkNzE
	 Z16CDGRYxGAAEpoSMOaoI6jj4764aq4UjGaMBCTpMpNgjaV2Z0Kj2iSPPeAOpo21xW
	 tTIbG6vMq/UwXRvaGESChcxwqGASVr0iMsnkWNq+7ZHaG0Cxh5dph3DgKmJF8DGTf0
	 rkLhd2l45pyvUsi/syQFUvB0V6spdcfwVA78O7GDPIlGrz7ztX9zEqYhXlnI9YpVaG
	 +HPNQWJglckjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D3BEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 22:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168721212870.31765.7543085140205810549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15e7f324a8018060833660cd73f5ada65a17194c27e1436e0811b86ed5cc556
Date: Mon, 19 Jun 2023 22:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687212128
