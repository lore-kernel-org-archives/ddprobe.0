Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F4E7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84097C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672996287;
	bh=M2UKkmT3O9sk48JPwqfDLhGGvFAE92j2xM51rTB1PZc=;
	h=To:Subject:From:Date:From;
	b=G9nz0FUNe96T671RLKbwgl4mzLM6B6du3VqePDo3k/M8UUFKVEq0SBTl6K6QdGYQC
	 feUGYi7Lu0Y27tTZSrHVKlt8m/XKMpPH+0QrhKSGVXNFeBpvGOxx7BJWszxcUO+fR3
	 UtebWg/bTPSianVXcHxmQdrn5H14VNjBrcjc4zLyIwhvBnOxJ2mXGhgpBr/iKu8YKn
	 XASh+Pxev3SvO7kYcVjzv7MB7kHnbJTWElQTY1RLw6hRZ1uERXbi7Ma9U7UEiQsJB0
	 XgzE7rZgFjmrE0HJGM52wn8RD63dW0y8Hb5ryUQ1HILWiULX5lhyg0it9tY/+VUQ6r
	 rzWoxb2NF5Ymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BEFC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299628742.23203.8015196395255567760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4441ad43066537818a5d875943c6d3c45f45dcc54aa6be0a428fbaee03983372
Date: Fri, 06 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672996287
