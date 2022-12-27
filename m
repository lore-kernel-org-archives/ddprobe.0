Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C387B63A5
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771B6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672164687;
	bh=cEft1JZfrj29mXQ96w7BiA7s0Kdf6bK4VlBufICWet0=;
	h=To:Subject:From:Date:From;
	b=QO+2xORw5SuJDqbWg2jiBxb1SWDlHivuA+q/tSFNPo2QB7r8UR6zAVCgbtIUSBcx/
	 bOv4Sx0sIwFfYmPNyQWRo+XMyHGNjpt1eA2BtWPlAR78U3YiMHEYSnUvL/RXgpVPle
	 unO8QeOYU+r9lPV4stOH6lIxCDPElsxLtSPKflYamJkm7dWSEzj+gx8ziD5VTOZuJI
	 JZxeYzfbee5KtCoT2oejNK3NfTg+Bvaa2ynR8LjYGT8R2OxPbxXP5lYJh7tadecAj8
	 Pyy+ar6qxIliOus0Hr0PyIVkjRsNuVRnh98c7n/7boHTfwjsU68aSK92eoneokCPIe
	 N6lqUev9OsqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 615CFC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167216468738.31157.6905054212966570916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccba77702a0261d81fa183dea6142c6d305126f480f0c9bc8ad16843ee4b65ea
Date: Tue, 27 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672164687
