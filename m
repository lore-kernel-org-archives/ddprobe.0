Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45FF7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7183EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663984853;
	bh=2k2BPeorAgQHrvqeKImnL24MhTHG+FikQIJxt/TonKg=;
	h=To:Subject:From:Date:From;
	b=aOGLlnwwwOml71+/1gNL+I36R1NaOZH4MYFjiU+nCrJieUIstpMyy+eDjZrmAjYfz
	 C/+VAazKU1l5S4X8TiooykU8P0lwjexXmK3T6YZfhOEdyYEeC6PTR1hPCwhGohV/R2
	 5nVk3xmApqoS4SS8uflAyOM3QYjIjbkym9WFrFOiG5Y7UJs/+nxksFmX2mKL+/8vl7
	 nkwf+MFwFEHIZmJ8fUbrW372mAgd/jJrX63HBSG2NtKl1pMYqg3J3hm5RbzdkK/k4B
	 9Q43ruZZBjRtSMamqMy7lOdOX7fC0JxCPXfh9dq4L5zVBovN4pynGcIfQUWwHpOwKy
	 dhKH69QMg1XhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53299C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166398485333.20592.2137584457510726551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccf4af2018fe339e2270f874906ca4556b33823784d8872324bb604aa8b6056
Date: Sat, 24 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663984853
