Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7101E1389
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 06:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C4CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 06:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692599048;
	bh=/APLyvhGD13r3WfzTJsFQYXzoF/32XxqNk2qvY+N/dc=;
	h=To:Subject:From:Date:From;
	b=TqArIR/l5H9aDHxxRAezyQP3k0Vs5PuRdPXTkunBGB5F4f8Rb9sI6fazSzLHRvNqG
	 f1LoGnzhlxIePK6eBMnRuyb46EynDTzKnk55XRsTTfmVEijsXgZQsjmxWRFYKJ7GLF
	 x9LhO7lU6uEH+LioNynAJ4gJbtD7MsqcS4b7h0ghzWaz7xwgDoUg81onlGZCcKZ6XP
	 OoVKvgARjVtuXSi5VRmXysqJAKqIyBN9XQgma5xPr9dxTZGrW6AmY8zrw21hRs934w
	 xEQBcquaKDFBWN2NqvwCh7stl14PFBXD9vWdNmKNJ9DYT4OZLg1wfJmYVqA5PnpIAX
	 32s+pzMlTaqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5194EE49A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 06:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169259904873.6736.12191867577778781937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02990671126026fb2f7194b9c822679dad74908f1b22f1207a1ab3f294b3bed1
Date: Mon, 21 Aug 2023 06:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692599048
