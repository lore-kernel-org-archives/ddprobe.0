Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64565EAF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF36C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686859148;
	bh=y7xxWNLHgcnGXi89ZYaQKYeKmVupYjuyMKIOXCmVDSA=;
	h=To:Subject:From:Date:From;
	b=kExKQsIAdafzyG5nE0/Y0Zgu+/j2JHwwILkqrbLVGOWY4BrcM7GFnPZwdxPCJ/Hq+
	 /BXoBlFF6kHkO4yJSF0c5RmCsfSybfRE0tG0Bzy/yxlH4nygbjruUe5D1erii+GT5v
	 9NVqWLgh5AIKo9nE28KlyV6CbKAiwANaoHYn+gcQ0P9GmeGDRuyP2jGenQAV9bAh2j
	 uFbW1gyRZ77kySso08I8F9qxne4ayCW+KrcbZ0dBHHnUvN2JGsEN41ORXQFqoJYp3y
	 MFizpUAHEP++SUFFTbbjObE371CvIiWmIh7HLfMDIUl4rZJUkQxS7DPXTfINAbJCKn
	 iYgKdt3uqYPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADECBEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 19:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168685914869.2569.3839398314618776766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1fb4f2879982d97164424939f8e311c61dc72725c482f80fa843bd9f26eeec7
Date: Thu, 15 Jun 2023 19:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686859148
