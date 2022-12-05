Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D7E7C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D72FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670222454;
	bh=hxhczDlXbOc8nGHOh5oC3kD+9/p4b1vxsP8BF5kEZGY=;
	h=To:Subject:From:Date:From;
	b=W2esM0O8arIJj+KsjGswK6Esm2RgRouTp8ZzsqUKNVa7NMjOwNgty9DOe7pVH4jS/
	 +VO1Hewp/BZzQJAaeqBa94aUDlglZlhdLmSI1cqLW4DPgNPdFO9UGQKMHUZR63fUGO
	 70qCpxbzlUN7DDHok7rwZXT6FdfxUaBV5gUX+i5A5trmd5mCxFLlp8k/xEhETessLz
	 FHPUI/7lxwhzWtRNWKdnNAE0aKqYJAh8bZjghUTxpq9tT8p9D/FtbSP8gRYp3JSdbr
	 QjTJhoDWt7aMWtN7b2Wol6opzUY6NIllteTUuReQYHa3krsmxBYXuJW1KAXk19gNg1
	 iq0o9JqZOigXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56539C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022245433.987.12421629741040299653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6b5d6c45b77431066a73439149113c1e9ad9fca09356e2ef28658752d6a650
Date: Mon, 05 Dec 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670222454
