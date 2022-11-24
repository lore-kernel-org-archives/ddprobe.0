Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA8F7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D87C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669263054;
	bh=+5uUYLPdUxqjO133FZ/aj/TokeJi+60zEUeNIUI/mfc=;
	h=To:Subject:From:Date:From;
	b=tVavKPF9tGFsHQq2ledrButjm9IgYMT7JAFmWqFa449ZpIYxjsYJKyiBB+8QTHyLG
	 33DhpJgHWrB2CPvAeXa8x24fW1WhMNsvCBCYV+gxwya+r3gUyzX/TIOVoz8+UIqC+z
	 cYidMPT+mJPqHXmRAnAHe+8n0f1GVBdqfxqlDL/L8sCtCcv+X1BYOqWuwfqAIgR81G
	 JH7jvpyxz+rZHm8ualoP8n9U8fmLzJO+8tjt8J5Zkatx8sG/dImhMNQbGQ7JZ3Swvg
	 NZyoBRWqgGZ3QgKMc3YqGTdW5C/Hz2bu3p0bdAd2hlKxB2SYE/6B/m8fERqniPCIxh
	 csgQal9dCmecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AF6C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926305434.18215.7518321181638150185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a15901aad7a7075a188f425d69c423d95de958f82e1e7a0f5261daba75c0821
Date: Thu, 24 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669263054
