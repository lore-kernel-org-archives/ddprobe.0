Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479F88465
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF115C4339B
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680012785;
	bh=0M3QtPcX6Y9plgCQya1SbPGy9/wQWNerBxEtFiLSjWA=;
	h=To:Subject:From:Date:From;
	b=pW8Jv5bAZEToRHJJREPCyZn5kay12WAJzjUZMjmaR+SwdZclC8El2343BM3siVRPP
	 izIoabYMmLKDvh61bU+fIcmUiW3FsW8tHZP6M8Khf94OIbASbmw74rWSEbmyYiwoP+
	 rFjECBdFek7mLwcGJp393tyyKMYhq7djLcnpy7wL3QTE6SfcudRwxjwNXraTF6aniZ
	 eBtsEgT/GglN6RUmWupw8BdqcV+aHAN+P59q+De5vEFMmFgW5g1trEM/6Hy4ZJJQur
	 QPxyahYISW72aTz6rT6OyLXfQa7saIhsNbu+WGLG5LYOx8LNElvVCAeaErqqraoQZk
	 26Cp54VFrlH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18C0C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168001278578.5755.16931998975311539786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8731b32e79a0540f0d152e7cd1364947af37aa1b5cf91092fbd610ab7d7a87
Date: Tue, 28 Mar 2023 14:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680012785
