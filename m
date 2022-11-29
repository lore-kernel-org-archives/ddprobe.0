Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56207C
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C170C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669683054;
	bh=VQKNOzDI9ZNApVcNP7h7i7aizfbZdW/jTSbkdSTLCeU=;
	h=To:Subject:From:Date:From;
	b=p4RStf4+kgfEaeuQ9jkTJp2LCt7hzXeKqKhXgnp47MkcLKx3W0S+SOwKJw75/YBEc
	 fhoYvG/S1eR45yJSg7Nlu11A/yJBp5yw3YKJhCwoVsY+w2by2iJ/x46vvJ5x+4ajTP
	 ybwP+c+xPovaHrisoqUSOS42l84ai0+Y16qklLLM4uyhw9TJ0cAwYZ0MXble0hcg2q
	 bMFXiUEAYhfAGPaobw7fsQxRfR9RiTQc1U62Xtj0NSWGu4aGoYGa51XvYDxZe3YjUj
	 ZLZo70THy/VaoZWguXRmWjKKBQzMiF24yM3Hj3CRmO7UasrOoFvv6g4v3J70yHolBC
	 9WtaBxkoVdxiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55129C4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968305433.16735.16388790454749134037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25e641121b4407bd2661ac73f50f231cef0a827063cf4f1d95a4b4ba1a485d8
Date: Tue, 29 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669683054
