Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353B2AD50
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 23:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD028C433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 23:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683848045;
	bh=fbhU/zN949pS7T7c9TABchubG/shestDCWSE/LAfICs=;
	h=To:Subject:From:Date:From;
	b=esSSnJnkGS8CKTlJrZCQqNbVw2ZaLlA9O7O4ZoVkyhhNNnPAPL1TURyQE5KgzhktS
	 XRr/iE9Viw1TppgTRXdkI5qlIJ1U5NumP5VzDiCB1PnQ3UZ0E1kYXsyaeVaHCf9W6V
	 gsxkRybt/g10R5yFxtzJ68qrFD7n5QvIfIOxb7T5ldIBQjB5xe54PJnoenVsuXxiRj
	 m7W9R89MOO11Q8gaqJjilxiJHhcWibdcayrwwp5jA0YA7soSQV7vaxgPbVu6fl6mBx
	 G0HdaJmDs1ceTJRtKqZ25Gqn0kqZKrwenDWNlqLPqAb163YJulLYXvuZfs1KvOJWu6
	 2whc0vcFQRHUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD78BC7EE22
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 23:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168384804575.2157.11239566446555126389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4325bae3ec980d9c3f4c1872b073285928acba554ded8d032d002adba3aae791
Date: Thu, 11 May 2023 23:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683848045
