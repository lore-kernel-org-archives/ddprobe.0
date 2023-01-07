Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E621842
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EDC0C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673083887;
	bh=NXqFaaChD9ggcpMSD8SjB55ofN1o2eRAKJyc3gZVqAQ=;
	h=To:Subject:From:Date:From;
	b=j4mu7TxETmuNO1cvo1s0qwGNZGwW5tqs/SD55FXhcDkLmHZRsIJo4xXzeidqpvBri
	 qhAh7TtupSy1BPrq/WKO5S8aHd7dDF25GcSUJ7Xp2XTqRYwULZQGeHy1k/dWpP03Yx
	 cUZdpqJN2jQYgdcGn6Qgt1HPAYLQKP/0v8FJwBJZJfZs0Sua3ES7aHjeeB6yfqOhzd
	 j/esuWBmf70h9FZMxpsxnw7kU6YqCVFnKzOhTuW7OT/COnM8gi5ZAbaIbJKJTlZYBA
	 ujr8GZ28uuHv/j+2ghT+1thbeGyjzxGl7LkhFsG+UcC8eFufEA8DPXOHmUkfRlCMV8
	 7zqS/PXmKtXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E0BAC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167308388742.17816.5637817827885200121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a4ddda5064fa03bc62c9606db5e8811024103256f335f27aaffe1169713273
Date: Sat, 07 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673083887
