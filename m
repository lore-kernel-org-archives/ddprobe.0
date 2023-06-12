Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BFA1D2DD
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 15:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7D9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 15:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686585245;
	bh=AJM6qpR0IuXT3h/HPcgscs5OGL2Mh8qkhRDiMMXlVJ0=;
	h=To:Subject:From:Date:From;
	b=WxyvdA5mhJ8YvABe6apIUuLf4jpgAizF96CxwoDTD71sGvGnu6ZM8Au+F7bKtZxHY
	 gXBB2PbdUdo44JUlYyHPqjAPo1KRulPbxFinQvPjZwUd90UoUH93SA9t7FMIJxVHcq
	 tOp7ZcPuWnV54CMo7fdCA3ImAI8+x5PYZv1g20DqdXEeOSAJKiUHZwzBRsfESRLzhY
	 IrLdIs+Qg6zLhE5tI5tEISeOOYgrLUc+AYvHFUN6EMN+JObRWxjMJ43RUg8SGvpb4j
	 w7766J/9RvwIblML8PgDGQ1hP0oKXPh9C1lF+T/nazaMov+kCQjeqI8mBoZmHz3JPu
	 lW3huvGxf8c7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDF3C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 15:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168658524577.14628.2435887194846756668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09f26764f76a57b870db1a81fe8d64f42c822f249d3f964440095017494ed58
Date: Mon, 12 Jun 2023 15:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686585245
