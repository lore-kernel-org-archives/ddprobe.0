Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448922F43
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 11:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A99C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 11:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680434705;
	bh=LYP/oQ93A2CLjWpbfDY8IuylXSM721WyjO7l0qWj3xI=;
	h=To:Subject:From:Date:From;
	b=aSMHuhEulhGG0OCusjE/vlFXs6emAzyKYJXyCDXK97hkaTJJGaol6qTPZr4h8c7In
	 f2pRHv1L11HWa6qN48z7Ja581Vadv1KuM6Qcui+O00nSanCj9ZG+JQx//4TE8ZFtSb
	 jk3gidactOJJdM7P+CnJsOTTpM8v8IppUnQ23P3Eug59Tx1C/2WgXKyyEWDsiq0wSP
	 RKad7bpsD0Hfs84nO0TbATV3S1cI4kTUiJqJlY+eOZ90oXLr8QaQBaC/ukHNfRRCbW
	 185C1QVKxv5MMNDgscLOhe34xNrM3bwbRawHeA98iRPSJ4XuPhENwMmZVjVNf1oxVQ
	 G2hII1fs0v+Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0F2C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 11:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168043470580.26667.12007116595340040889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92d07ca09848c7585269f70c669111864257d8b7adcc91bc7a60770bd8d4cda
Date: Sun, 02 Apr 2023 11:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680434705
