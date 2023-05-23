Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26462200D1
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C21C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684858385;
	bh=lvPK3GO8/2gpS0HeL2cfYo13BaC7F99Zuttxjfy9t/0=;
	h=To:Subject:From:Date:From;
	b=Lyw5H+waHgryu4FVCWCD1LFkMlpU0rFJYTZAhf5hzg0qF8yGG5Y0Re43jBd8d+4R/
	 DoWkE7V+w6yHzX5qPaNhaTJDOiJFbxnQUOLXJ1N1VxiTGbH5M2uJYnUgIOpM3cfjIo
	 Uj66oi1+B9j7HRT+W8LtAG738NyV/oSUZOcZyKabWIaH1ysluRUwSZB10yFZnEEP38
	 BUOIpDZZatQvEc1awtN88SCl2kuJau6UEKink3arQy7PgD3AwHbgeZtrxKrzloKGwm
	 0ZgmiWWumetd7zxwJMvKMIGbtxQNM/zEkguDOwkB68tKZx89eS+7W/LfOhjhij4E/G
	 aZRj+Wqnz0DOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4929C7EE2D
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 16:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168485838573.27335.1952456448816131918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba7422c311816ba4095a494a950d7b22b040c7ffe00063a78ed56b1ca482f1b
Date: Tue, 23 May 2023 16:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684858385
