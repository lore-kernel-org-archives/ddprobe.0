Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2A9AD38
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80E7FC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672847487;
	bh=JONNkD1NX0zE3DLLnvkpYpFJWjpdk5kD6kH864iP+WQ=;
	h=To:Subject:From:Date:From;
	b=RbZKh8FAkMrS21dXTwPy/UTZ1IZ9Ts9nZDmvvILhQlKAbhp530y3BAXWSDqicg0j0
	 Jdgs8ZIakmy5RKAOjrQkqZ+JqV5hk/F6dYfCayB+f2Ytup4yAUVANePjPlwDALUhdQ
	 JpFrDNyi7eBzsJsjilhoxY5S3zWWtn32FB/23mor99MkKPm5NsNI5/CQWMHWoUsdNP
	 EdWfOVvoycEoauHQTwmMio6FbsLRP++anzON1n75UW2TTpbsd/noDfdEnKL8iVY8mz
	 WjrrxtKZ6JbrHIW/+HAccuQcFDAkJ8Yu/6fA2eXsUpudARTGwIhGjYxAB1sX6aDAzG
	 xwnLMZM7+nvXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69141C4708D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284748742.10938.424705837621175775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a4660835711291bf3dd68731e3df302dd523c7df5413f598dfba3c989d3c04
Date: Wed, 04 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672847487
