Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327FE184F
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16FAC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678684025;
	bh=wxRnRTva03E/DFHeE6sKIV3VSXui+LbXmfzcbml+V94=;
	h=To:Subject:From:Date:From;
	b=a4Obip9Viu03M9AsCq9MmD2kCFE0Ai7Qoni2SInCaG/EbL/PJWFQRIgUbpnZT4kcR
	 cOVrQwnltul0VvweApmcd54f5w2Zo1gLYje61TVPnRXaUIEwLt7FT4MDo9sFrCpAa7
	 FHj5ELWbwXNTyMRH8HqFEXyjRqJmjiup5wzz1Guwfyflkp2dpIrdtsiEsI8w5xCKBV
	 dTEWT8U3XbR3X1H5S7FZz8equGF5oIxCJck2UpeSVxjkWv9QXWjDzbSRSOcVq0UX1S
	 oTDP2hev8T3ZX/P7l7lD7A1lg0mFpT3FHwqgK1eStbG2QS24B2H13BPI8DH67gi+VX
	 qzP0YNZ09MQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B732AC61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167868402574.18484.5836008262134026928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e061870710a4b74efa9e7cec22e6d5264302bab1c359ad332e639bbb61b51d
Date: Mon, 13 Mar 2023 05:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678684025
