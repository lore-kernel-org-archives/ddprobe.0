Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E8DC12D
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 19:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BD3C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 19:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683316685;
	bh=tysNxXQecVj/apQ+Xwz26AjIzaUZWIYUMfMEOe0xBs0=;
	h=To:Subject:From:Date:From;
	b=pf9i2U7iofVIL4biYzim7bpB5pAotAgkzY46i6+ng6s4Dk3svW8V4ecqWQCPaysH/
	 lzo1qSmsvoVSh4ibHg51KqTgoCANlQXiP0sbkkhlg3Q8z1IQg3kCZAlFBVJmgXvRfe
	 Y0jXF5r9+JVDQQCuCt3IKRWLhuxo8aPl/G9xGlG+I0q+n3ZPSYVwflnst9IHIbV6u6
	 GrXUTi827hsRPfuJjclCvpuJOuA8wolFf9A7T5Cka7yb9iZpHkuDldhJUfvg7IppmY
	 n1FaUyyKXj4RkVCX2DHyzRj27P5bQnsJ6GZhnPTcDjNX6/28z4VJKh9mJuR1ZG3JBk
	 v8zRUmyH5hzsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFBA0C77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 19:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168331668584.18518.5810504746244716889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a959be418cdc8bfe9403389d0c96e4e257a5537300d7fe0818c9c15ee6430646
Date: Fri, 05 May 2023 19:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683316685
