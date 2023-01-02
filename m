Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004D0568A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF8FC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672690887;
	bh=0jkdU/riCbDubYlnEMF1Uldnj1K6BdEFLbfp1DzEX3w=;
	h=To:Subject:From:Date:From;
	b=INuOxzv8MIxNlDZKih8hw65tm+061vNVZyIEhHiUPzcsZ68snNhZYen4MU0kboZbA
	 2117PR/rhc3wTHSClOAbbebTcAuWjWJcSiNutVTZDrMQZ6IzE5J8j/1CpXo1tQ8AHC
	 nBUI8272e4AjPhaQE0TQoP2ZQLBovLfnk1MJQUc4DPNDhxkVENW8zPUzkBvhNEMbUw
	 nNXsXIWNzEh37o7o8jPoFBJPTr04QDErUKYYM4Jg/kHZKbINwlcHUdmLW99Iud+tHQ
	 72/h9Z7HX7n0bl0gHv0W2EH/bHAw7509vq/sScq1g1BXoUlEKt+3uvLb27VUybJ63L
	 UIZmLKo003rMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78863C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269088743.670.12681075537051943119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a85e7a3e2e3bb46fe10a4dea970a37ece3204c2f5b7bbe8f0bb493cb5c55fbc
Date: Mon, 02 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672690887
