Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDF333FA
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95E64C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672920687;
	bh=NZ6YQc+fnhucdqnCV2TPkjMn3k4fv4Q8TY1nhFZ7r1o=;
	h=To:Subject:From:Date:From;
	b=MhNa821LvhTi0IVvP1l6okojqi9wazzSUMcDyXXe0GBtpDx1yENLqfQfv3xcOOXB+
	 JczmryyWt16YJZeccqoS4LonJXcEEaLaRM8yuOQFd4XzdcOCjwF877DDX+lscQRddO
	 fRcq9SWjFe2SMfxH/QTRVVFZYU4AAzo4qK6KZKLhuHXbuqHY0Kxq6Bqu+X46sPkwep
	 8tvcMtJdd1Wnby/GbYhKWYam+KeRjggnKmDqS+fXK94X33kbmFMvPT64633s7+GYPa
	 ZKU9obFzJcyx6Eioqtg+G5TUe3yZ2uEF7d27EsVlLVkI/B+30ZSTeb7K+6t+WYb8t3
	 DsWkkJbb7h5jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7757EC3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292068747.21987.1178719010800817556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b92927dbf2652daaca9921c69a64d163147087e8848354d7d03760516d4e384
Date: Thu, 05 Jan 2023 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672920687
