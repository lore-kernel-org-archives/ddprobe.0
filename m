Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691AA46BE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6368C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686084725;
	bh=dXXpn/GjAYcEyPz16rMwB7fINaCUKdj08xHuMlQdEfc=;
	h=To:Subject:From:Date:From;
	b=JbtssGzjRt8RLibnYV4X1w6vptYGEuQbKe0ZP5ipdYc54YcO7YI4D3Csibv5GcYlc
	 Am8ZbQuUDwvqJa+WBxuf1c2qh3OZeTQADbWTD9Zj3koU/mtA0dFRwKZ2JmKs1lPBSe
	 yQCNC9FGj3ILhGXivBzWTYH9XSzvGUGQSnLTfcgZaiU7ujvurRten3dpO78EhqHMkY
	 qY7jIFIR6Q6I6sruNqqqOp9cdoPEQQIoMAgEqDNqlAVzvGPkp5xyWB6saMMSGPbfKW
	 RrFL+gNWQv62sAZFL9wMJwg4w/d0FMcZpt9pwyfJ6Dkz+IT/WgFPv5itSe+aDw0LXU
	 3JTLRnExlavgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB790C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 20:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168608472575.25938.8498279347129865382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565a3cdb4fee29e5b87db87dabcd29497435cb26f672461ddf601ec23e4a597e
Date: Tue, 06 Jun 2023 20:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686084725
