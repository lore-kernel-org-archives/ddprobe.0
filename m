Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2727B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 14:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5249C433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 14:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682432765;
	bh=i9XeodlLVg27rr04AdgnDma7FPhgaDsPweOBfIv8vGs=;
	h=To:Subject:From:Date:From;
	b=QK3H24NT2nLMqYi6CDgP5I4aL4brhZKHMynye5n+ktWkYYboA2ZrzaZq/mddlFOU3
	 NFcoZkH3Vb2Q/f7R1ylXiRh5zlrUG+RRH8ZBzWHKsnTfn0T+d15443SSX7IM6hjFB8
	 gJu+/seIp85N7XfV0Nsoi4vLW6o8DrFu7vOhplVucHyUG9RNJasn2O8mgf0i4tBKKW
	 gUPCFAy0KwE8wbiwCH2oqu/hgfe9YcsLEZnZynFLP5tfLKaSVjj8A5eP1GWYisDarp
	 UqvnSQTh8Bsfg1+dy/20SxM/IrjTNNasZ4ENhnXJ9gf9X8DMtHr6N6jKUdvSEDOdwp
	 rqStnlVmfiL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26B8C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 14:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168243276578.32024.6633594712653848718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6279aec3f0ee3844e22c0b2a2e72a2b822010e7799cc97272cd57887aede33f5
Date: Tue, 25 Apr 2023 14:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682432765
