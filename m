Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95E0185B
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 794D3C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667628054;
	bh=kxj7tygR1n9MeaXZG+SZec+gefVGl3GOo0DfL9mZPF0=;
	h=To:Subject:From:Date:From;
	b=G+Bean5qqEiPt6dxpayQMnKb/9iSJbmULFIACTjmevDIjPsmepTyq5etdEbnhPZm5
	 ql0qSF3e+BjP53M+fxp3/48yd7lV6aYbkyBfYvJMlkf7lvak5xmRWLhbykTKhkrTuy
	 PwWw606VaGu2dQoti/Ud6jCHbhIeHX1G6P3xspI5nw57DWmT085X2ijqR66mYCmcUI
	 +EPbP8fAeunFy8mM2+b6Na9wS6JZqHArhT/+BzQsxnqp3W0rQv3xYCOCIwbUbtGuyr
	 /CukqtE3JFWW46or4otlTe2kIH50MUrmdPrliWF8n8RLCwyT0NOb/KqQghQG2zRcfu
	 JlvaTGrGgOY9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B53AC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762805435.2047.6723572696031976412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407ed7dbbe1fb41ed44375fd8b19ea3e7105ec13cf3cba02b9ae6ff128c21898
Date: Sat, 05 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667628054
