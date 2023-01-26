Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1681389
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 01:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD308C4339B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 01:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674694985;
	bh=5hXG5Ry8m6Bgekp7MZ8fu+reRF86BBnfYrJRcE13fzg=;
	h=To:Subject:From:Date:From;
	b=VGb1qDAXK0NvQ7HeIj+YjdwGX36CUKZRzPaDH8pjtfhVoU8TezNc6exnMW36h8aQB
	 0kL0AtpQAncXAEga0YRmbZ4qlMacAqp9xY9QYnRyUCCeu9MUVzWBhkBY3KuGycchih
	 OPt+qV20jje9BcsjBE6iLAvyAfETEoXjpYuLc+6qbe6b5URg+WIcgWmBfaBIYJqXnW
	 WbKsqyA6vQSS3xTY7hRan4HR2MArvajcIBDbSLtrNglrpFyMsm+guadj6XBen0Kfc/
	 cRKkSezUPpKklELm592s8LothuWe+D+h0xP5m8D9kuu57yclqRxmlDwRlB9G5VLLQq
	 GZMAkiwLSuS/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C458FC54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 01:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167469498579.3938.13301578477392992647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4d2abbad9ec27d4ea9a957ff8d7126d7815fc25abe9ab108e27050d89b63a6
Date: Thu, 26 Jan 2023 01:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674694985
