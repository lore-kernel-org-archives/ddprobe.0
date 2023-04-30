Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADB017D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 07:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB766C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 07:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682840166;
	bh=qwrWo8n7jhFpIIrzpP29tUrWeVYg71MObM/n/dokl7Y=;
	h=To:Subject:From:Date:From;
	b=H4TqOO1DekLHeGGlT79PzIn6wRRGVXMI/NfBsp5KQDRWYZwLSOwsAl0CMJxUGnjeu
	 7kpS0GJ7TM9Z1q84wsor/XUQa8EjP5R5NJ+tjs1ccwVH+brU3Qec9U9S6wHuR071+N
	 C9uN4yn2M8hkE0li9vs+8JTXuq99JSe7EMuclKjp8iuon5+T5fP0yDX9C1FFG88ExI
	 Pi3WwLRFSfPXXwN01igXfXcTp5bS/J+/v8rdrBo7AcBHTf/wnOFhRiaMxhbCN7Rz2W
	 XdZYAWguO6wUU7kbTYz4obcRs2+tuTYtbhNWPtyfcp46axgpKALKGzaqZx2q1ODUd2
	 Q/wySWXyvg5sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD13C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 07:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168284016582.19342.2283934609509026535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c7ef5c8ab09dd9666ec497bfc90511ae99a272b068d99328de1de3ce090266
Date: Sun, 30 Apr 2023 07:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682840165
