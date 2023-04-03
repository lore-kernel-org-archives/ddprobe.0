Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B9B6FA1
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E235CC433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680536165;
	bh=cPFr9PbMnCndnmnDf5TUUY5Xoqq9OzqEPYJVT3gOaa4=;
	h=To:Subject:From:Date:From;
	b=Mt76jEsIiCmOMi2GyixR98772loc/keYIc32OPtWYrPgdfsadvJscvFyIIn0DWx44
	 qptMeRnsdqT6gs87QPiGjvrqSNMTaKSVmCPPyall8V2vre2fbfyo6R3cuDa0tMwE/f
	 K32I0MxnPIMA4ovfPPSb5scV55GQarFVmF2k4ObjiuV6qp5HV78LMFBkGrRaOGIEzC
	 OKGUczey0p7OLkcIXfGryTxHFqb7MTebUjY6ZgZAq2PF5RKQOOZAXe1zbX9j21ExC7
	 viNaLVlVgxNCJD8QDLviBDLr/IhDJfZ54NWfUZonyBZhinbEyeP4mUYPnIjpKLQBUG
	 edz9GpPW5yvDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C5EC76188
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 15:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168053616581.30839.12474458571249557268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbfdbcc8d8009f02e98f54d5af5d6a1139220664413bfeb859c80c9a6b00c3a5
Date: Mon, 03 Apr 2023 15:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680536165
