Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52FB15A7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7299EC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663195253;
	bh=4fblhSSudxa5S8A45sqK6i73UUr3Yg0iEOze8bB+f88=;
	h=To:Subject:From:Date:From;
	b=AB0dNWIYiJIO1INz5OrtYd2+BkBTdWp+DcYfTUFk2E62oAIpG6y/BKR7hJkwpVXm6
	 wLQ3JKIPX9/5oH/xq91jZmXf2qqUwCa7q8ksW472yCpJEgh4CEf6aGoZNitvYURZ0u
	 nnRBav2U3v4eHG4M++T70veAN73gGCC+76MAFn+VMocOdLIshe7OVj3Gl+vL481X3M
	 0duWfGcb3MFpwuwMNM5ZZV0eSeMyqfw/HLuIajE62ojUdxcoI37//LjqfJOc0vGJEq
	 nRqWaQM5f5afuY9AEr5xIrCCZ5X9r5s6Ruo1n9LD/BH1Rl+aoa45TL/pcjj/e/vIY+
	 PX5rcm11fW7Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53326ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166319525333.25201.13649232319831488965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51a988c5b876de9a0d75159cd30571e8ce8c51fc238418f2a765e14a7efa975
Date: Wed, 14 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663195253
