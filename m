Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FCA2CA6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6E5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666433453;
	bh=d5zvnja1ICA3xOpzw7x8s0Ss5sXtaqvbjUCAeq3vfX8=;
	h=To:Subject:From:Date:From;
	b=om8/3c/jLGdtqlJFBy5y6SHXfzTzO6TcpyMDVQGxVmluNN0YzRi/8P7Gqm50rXYkE
	 pKGy06AZw8VK7lYVwZeVUFdiS32XKID82ucU+SNYac7SSnDuZ5PS/55VH76ioaY8i8
	 CliAqNWtMeWwxANcE0pMNRpsz171YSAfVSWLJxMFYy4CdQUkJAN9CMroFvXpNAMCPx
	 681pUe+BVH6SJsf6j2PfgsYwIduamKLgfTt5GugmQiQiRm+iXNLqeK8Y4wo9XbpBtz
	 rkBOahAotzf6scQ6HVQYYDcdP39nVynFT1gSal4w921SrKAVTkWIYPn9zdSAFrm6fy
	 GN2FhTPBf6T3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FEEEC04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643345331.13619.3368994123371302701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f777258962c0f78ec250ab089f3a4ed44e16968828aaebb52b70f1ea05f0ab55
Date: Sat, 22 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666433453
