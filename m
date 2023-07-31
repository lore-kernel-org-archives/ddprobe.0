Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CDB14F8E
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 15:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03D3C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 15:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690816928;
	bh=9r0lPCM4ouqNj0A2gYi4WnRH4cs4WLIHluyuMUt7Dps=;
	h=To:Subject:From:Date:From;
	b=OMpGWt74XCjC+i+LrDqjM2TFuonHnIqxFJ6w9s1f5i9jnidaaNA8L3Bm+vVm9IjUp
	 g/SofmNrxpxt3Ptpw7TVRKg8YlRIAD+2KKa/iC5RMTEhGZ0wetk2PEDmc4VMMA1wsV
	 OdBveeRNZ/4NoyYHSlpOvydDtxM5KqNWYld+6gPg015d73eNJk2Qmo5VnFZTHIBReq
	 9HRJo5wAD8gxamRAzFMOilCkULp5m473wMfZ4CS6FzkwWtH3NniGW1VnLvf+PBXOsy
	 oAiDYnfgAOT2Y8Q8PaDQgHEy1JiwfuIliAYFkL/oKxjaxsNJCwLDoOZLTkBG8T57qA
	 pSIF8xjR0hAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6251C001DC
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 15:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169081692867.997.8086985014655546032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d85ffcfde297df6ec5a4ca920a7f75c2877d74274a310696be3fabd6db7104
Date: Mon, 31 Jul 2023 15:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690816928
