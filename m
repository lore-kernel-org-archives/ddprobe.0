Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F37846A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AD8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687852988;
	bh=d7kaNHWIHhUNEJxF3VgE4B+62P+VQtHYFDy3AUU6h4g=;
	h=To:Subject:From:Date:From;
	b=WB4E500gb93JsXDfDdNRQ/fVNHV+qLZaxMCMPEF6cu4lUZNptABSYWcwAwvnP3xl9
	 kDhHlE7/28B8xrza33dbx4Q/6hv7FjD2KX6Ex3bsyII50mrWgkFwMCNgPZAOLixIvu
	 euNn6ZsiFbjzfClNl3KFILeFZnHJbcaCjmvcqDByz94a5j3HIOzeMZIfNqk9UBxVMM
	 ldEUxKxIdBpGXESEtGM4dhil4me6MsYr9S+2FvNBF+6Mugy1p5wxFjsClvZHJ/9OYS
	 yMj6HmHHwe8BzPm2dOzR1HqIpGh5DPJP59Ycj5oaJ/VlFUvBAs/o4XG0yGDr1IFkBg
	 W/+n4AjGxEorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C12EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785298868.29046.12947900573377538336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225186dcb8bc54194dcd80a2d9501cdf2609518e1e389ba67a8a250a67098048
Date: Tue, 27 Jun 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687852988
