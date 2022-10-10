Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BD023BD
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A58AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665441053;
	bh=6S2F4tGGe4mIUHkTN9eKOKXr4bu9tbljqY8uTRcB4R8=;
	h=To:Subject:From:Date:From;
	b=vJqdkq0FaTpmpJFRzzCfpZIEPajqWckQclyKSgH66PuC+w55YvP2SyjxGjN49uqE1
	 p4N6lEGOX3u2zS8Q234yc5OHNsmbRk6uiOMcPTLicSn3dBlHCifnyZYswuJYiP0Cau
	 9WKDLX62HrVt1ufYtECqOUWDfpjGcqW+KbEs7ImwDdIgXsKa78zLE1tI2giHCGgLuC
	 /YnzHN397ufqUerkmHtAP3mAGBUIr1pANOwzgNV7+6BJAOICdqozdV4Rcw+loEe7yH
	 9RmQNlp6XehcTrgXu3USJoK7CK3PFK31haz5wobiPBKD/IUZTKqtPCrbNWELZ35ahW
	 +2BzQRCM+FR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A24C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166544105333.7785.13097128887298505199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9b398e27e8437ef2e2478d390fbf01c1f778653c9f1ad5a1c1540e7651b79e
Date: Mon, 10 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665441053
