Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49B1EBFD
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79192C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668893454;
	bh=kpkLbS8YxDQze3cLNgRwsijf/tIP8ZEZNLtIXsKx1aU=;
	h=To:Subject:From:Date:From;
	b=P01HSD15lkhzrhtxfnbLkdUjvxh4l14GSHa8BhmBBvH7LNJ7YVWILsp2Usj+MZCuN
	 kTaSmvRJ6cr2Ulu6DRCaW79l1w3pB4W3AQwliZJIsRXZQNwaZ0f9hI8k1wHEFdT9ap
	 QOTaVt3gTYx3NUiIOKt3vwLlsuihAW7rUzV0hvN9zJmNYH1Lhf0SEeCqpJlfHtXm9z
	 OFRVEgJrboxbqZ3tv088sLqL/d/H2os0O/iXk1DQRrvJ5YkmZnuYGmgsl9lLSMuMwx
	 Gf6Lqz1+YJtyilfWhu9ro4uhFlk5LxbaGuDfheW9z+sN1BrK7CBUlaf/HIwZH23g0c
	 rcB4mXgvfGSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F17DC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889345433.23621.3341948867972003629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78853418a0aa7cbac61a9b039e6895c21b76499964cee9835233a4d8fef42d2e
Date: Sat, 19 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668893454
