Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08891851
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C67C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663810253;
	bh=2wv62W0Xk5Y/fybYDbPVSa/EWN8RUA+qwPLXbJ7/bUM=;
	h=To:Subject:From:Date:From;
	b=RMie7G49eb/CUxPs55A8lPehprbLYJUZfZgKpOa72aC8NuBN+Ogzmf9XWkAr6iz1h
	 a7WBDN+yU3/SXk/PmxT2Ko4h9Qw7no1dQlXWVRYAEtXTIi2zSyle2PraAPdxpl4ERq
	 +cUlkvDUsIBEQ9DQhqO5+rEjWVLz3wrvxP/3Ul//j/84+16mjfzZzQItUWDYY9Hiv8
	 rkVaaptq98Mu7JC8z0LWFi/voaZUt2IV4NlFEtKyPgWhLwZ+RR6mVULPeDoJsEHHz9
	 TdqykwfwvocoAFXJzqoJrW/wWzdjxXg2UOnmw3E66Fus+SzYjh/uGBcG2qkxb7ZyfN
	 1+hAoALLbgBqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A61ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166381025332.16978.12999195219427827522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1e695bd946a249f02c9b8717efa05c3d1b6a5822980ea1980df73e935bb6f0
Date: Thu, 22 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663810253
