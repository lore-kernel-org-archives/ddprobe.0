Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAB22594
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 15:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F0F0C4339B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 15:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674745386;
	bh=cd8kj3uIysBMqUG3PMNkUwohmxfQ5yEAhLhJs+P5SZw=;
	h=To:Subject:From:Date:From;
	b=sZD5b3DbpmlmOuYqWG+aErk4SlbUTFVTYXPUNGIXFJPg3ThyGxe7ZlqSXB84bfIyn
	 ojj0sVf4GVZEodUMYIe3s5x6Fd23Yhea+LCQuuZWLLlT77wZya9K/bK6yV/mxbVPki
	 lkkWfzSj/+MAuRgAsQli3/P/fO8QZZOiJxHKo4k3ff4LCNMQJij8CNLE65oWTZ07V8
	 PJK63k0VLtpGvf+ZcJdTfBckeHkqZ0C6N8n3mNSxIkYPo/rSbGcejaIAySo0QvUldJ
	 KVkwIFNVmZ5vcbRe3pb+Yp2K2Df1cUBN6+vaNltbboPuuhnnCWnwSSRNTcbKzaqmtY
	 3CgY4iA7AXE0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E885BC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 15:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167474538592.14647.3656490323466224120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1480d8540464d425764c7cb13a35fa59bec5bfbe62880d8768a040b1cfa6a4
Date: Thu, 26 Jan 2023 15:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674745385
