Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60676ED2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 10:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87F0C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 10:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687688588;
	bh=RX2RIoWTMXRj8Cgt7tIVkkeXH7LFQY0FUvrCHU3K9W4=;
	h=To:Subject:From:Date:From;
	b=ISzlnbYcWDUKUSqknf1aPC1z7GUViEVFfagUq/pT7zGJygFWiBOkjdhfghNW6EAwi
	 I/4lvhoYvI0vIE3eMFvtH0kWjuNrINKmGgITmJ8I9WZXJoNSXLqfUXxyWW6qiUOtlV
	 5LLN9aEJkMD7918nX+Dm+1U2NB/TFrypptUZkNH0GE+VtC9qhJW+czwxO9uAZR9VLU
	 bZY9QAF5SC98prbgpZ0zaAvyThhddR6ERSb8c6xGi5J9Zd5xPhrjEbOL8KKJdlTY4d
	 G2xp1m/IIYwiQkSSyrqrunyKCYJoLBUHGaaOtC0n/1+BvkoSJ/vlAPLqDsVj27ElOh
	 A4CUv+gUNs8IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4B9EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 10:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168768858872.20995.17635240227470359421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea428db2ec3dd387a259e58c9235112a38fe193d8e008d3ac34847543b1f237
Date: Sun, 25 Jun 2023 10:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687688588
