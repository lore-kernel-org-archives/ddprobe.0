Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01B163D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 935A4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668144654;
	bh=/UeRAIT9b+dd3bRwywe97WqJqYDb6WLbVJGsKBo89Is=;
	h=To:Subject:From:Date:From;
	b=ja7mzzSHM9yzAGQS7WCsl7swlQjcac59Q2WfZX7C2CCYF4mHixox+NMdmjYEas8O7
	 4w0PBCPL09q/D20TGs/RdlJT1cRSgLnhM0KZt+PyyK+GLky2snqc+UJFtBee+VcFuz
	 cZY7uXqo/5spx0nRcF19vsV4v7ALZGXIOUlv1xw4/id8yF0+kpXHuSXoVknNs6ykKj
	 Fvh+vXktZbGMyTHk5bnNZ6kWOjzQRrC3MtvxIBkmnnznNXHMHuD1wNWfvpfToTJLCS
	 CU0aZ2qeO9xOJHNsqqY1nzOWN6HCGIIALhfdhAjzmZIq+MCV7a34SCxBsLYuQLnzmU
	 6bDIlpNpDMPbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641DCC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814465439.8942.6969209859841991932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9274f8c5d8bcd3391db44ffc71c3c5a9d066d46fb3de11519765ec8fad250a9f
Date: Fri, 11 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668144654
