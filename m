Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A5D1805B
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 19:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17C0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692300188;
	bh=aRxx5GmNrDZltUhAJ6+A5DtRIefcVLQ2URXmJ+lxsHI=;
	h=To:Subject:From:Date:From;
	b=hI23xEtdX0sOrMxH5lnbKJ7F2D+eBVYtWiBSDxX3Dt7rAEbXy5egR20pHtzMiz0eG
	 RYYhnxUlMt4wMuNe/Lq7kUGwpFGgZ7adwPi2J8F+6mdeijTJ2BYOXpUKsPY5O2tvSw
	 d4JRvbV3PyZlrdRfbfZjEnnj4tDu7cTjmOTUFFY2TqVi15riIAN+mlECOMOeI79ANf
	 /CkiGxwrfF654OERe5xoeI7YujbA/VT/53cBdmP1512S+lwwVe7K66xv99ISVSLMpg
	 fm33qlmlL9l3AlhgK7ckZzMSQr5TB3kj5H5XsxxK8GAVZVR0jhQk5WfiNOUFNDqMwp
	 dnjxKRTfCKseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C37C531DC
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169230018868.8032.276911381365586340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4000ce0fd63c353456cccd8b82602a7254407fedad4278c76a9b00b570316a6
Date: Thu, 17 Aug 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692300188
