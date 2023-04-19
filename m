Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB0223A2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 14:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E4CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 14:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681915505;
	bh=zc9MBMQOEwcBao3bOH+64ETialuAx7QcIFg0H+wC/zQ=;
	h=To:Subject:From:Date:From;
	b=Asq5XRz5yEtvH3b0hqo9Y6zvu9sHrLH90/QOEgwjwVHehZ3lM6sljq+UgZ6tZYQm9
	 ih4DYCX2SZiLdLLQt7O7B9SHozrwXBVqE8r4U5kdXJgXD3hiss9SPX105FbFCEAa5x
	 /VM5haENfDc2om49iMKo+zY5wjWC+ILjNGtU7q04aTcCWPfyvAVs9a/zA6fTWBN+MY
	 a//yA8tYW97Z+A6myL5jebwfHSQjFsRk7ukJfRy2ix+sgZNV3kTSx51MZAejeZdz+x
	 CwVjBdDKyr0MlHBfUM/Ku6YyUlj/fLbpbiJEKJEzgnH9l0XE2SPj1cktl/5kO/qLVr
	 ux1sXcttQWcqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC02CC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 14:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168191550576.19626.7495503003245716938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2d48914412b8ec6211de92e13be9d4493004a45adbc0c49b4139d0452e8eb1
Date: Wed, 19 Apr 2023 14:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681915505
