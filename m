Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CC6173
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDED8C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674708186;
	bh=BlE4GuTyPjkQCC6zMJTUh6u9bgUGB2/scbfVMcriLO0=;
	h=To:Subject:From:Date:From;
	b=D84DKbYWWdXLQbeGbPU6Qsi8FGV2Pdc/H0oKulUPZXcrkCoyFe/n281HuXk6BeMdH
	 bhS/OQFJUAzpFplws6zYlYdYzgme0WBTIFhBaXVIyQfZEf6cn/BQKcG5lITnBda8Qj
	 DdyOsgspRWVxSpF4JUiXzIqwWnwS3XccHAU1RyrG9gPH92qx+j6Ql3gDMlMTlv7wXk
	 jAYhC73KxqBTEIaQJ3Iz4VHa+satkkVcx6JIQQPQ/zM9c+EIeC09emsHbOnN8SyX8z
	 oqI1u6Jw7yMGktlpWSFboJq778h3IQye65tvA1V0N6vgtM/+ptwjbLcoghOfgJIzfp
	 iPeZh1QY6PEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DE6C54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167470818574.7535.12067747922272805723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4eb9e6a68d984e277d4c5bf03fafc7e92df03e00fe429b5b590a8b6a201183
Date: Thu, 26 Jan 2023 04:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674708185
