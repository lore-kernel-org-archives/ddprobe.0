Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF181381
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 07:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D0FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 07:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674632585;
	bh=VvraG69o4sjQ34L689Hu5bzSua+roGUbFRGmlRs1oPI=;
	h=To:Subject:From:Date:From;
	b=NtDVVdyv1H+2wmY4McDoe+yWq4keR4DKaIwxLPd0h4npOjEjn9mWlVDh6mt3tJNfy
	 J+qhc05JXBInE+cfy8bNHDEwyUS1Ms55OZ3ZyKShxGh1XxSQlNE6lGoQnFKZM5LoA/
	 Dv034H3C1XzaX/WR11PiRdj8WfhWWuOzVMsbjTyN17J/ZXzLVXjWu1TqJWYJlTmGO7
	 /ugu0ShaK4OJDc54PqTaxiJvpm1hOKuBilzJczu544fYItRpauc3DvOicDRWno7wDM
	 aU6Wkk8YtHBHhurOXwyk8egsorotKcQ9Wt9MEFlsTRGtBg9vB+Ht8q6SvwH7hhGWpu
	 xKxuYeEnePQzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4489C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 07:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167463258573.748.11497805551589964474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b8c6c6dac5341469f91d0897b26b1c0e7105b951ca515760e49d6935f0378b
Date: Wed, 25 Jan 2023 07:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674632585
