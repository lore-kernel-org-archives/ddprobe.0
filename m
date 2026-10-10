Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43588381E83
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791672634; cv=none; b=sG/hHJvnh2aeSEEi19oklMJ8LyqmdPTwVo+aDqgKVZeqn2VkO2DnEzFycu5vql6DHLGJSQBj0xOp+2efCymMgmJ/ptjzDwtbFvb81lR63Y1O+Ypi5sotY1KAiCcyJIIO8u8dkHvmZHTPqedFloXd1x9c8HVh+uyqvCkO6jZakX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791672634; c=relaxed/simple;
	bh=f80L0o9xyk/rM/MRfpbA63uwofb/GZ9453NHqYFH9h4=;
	h=To:Subject:From:Message-Id:Date; b=MfKOfTopR+UWP7QJs5b4vFg4IJWgABDRRJ9jl00KwscAD0uwbzWlgVv5mlzAKXz3O8vHV9ZwY92J+2o3dY7GHSj2+Ki1HqsKhDLHy0OEVxjTlhVF+6LehvLfDBYFbVlkW2K0KDjnnAXzPCIGfsqxUWHcw4myok0A8VX0q8oSM9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGz/1fyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGz/1fyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA692C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791672633;
	bh=f80L0o9xyk/rM/MRfpbA63uwofb/GZ9453NHqYFH9h4=;
	h=To:Subject:From:Date:From;
	b=EGz/1fyrWHxTXHaRIzmW/9t3X07tJLbbfgirB+xjhQcaH1SaFNItoWBkRHuMBmUT7
	 XCdsz4ZD2J9skGdnCRE9oOUStnW5su228BGYfgJNEwU073/CLQ7H2s45E+cVMsqPqY
	 Wvk/ZTqNESo7OI/YBi95xmVtEpsyTgvg5CcnV6MBpsn6OKjKMhzctoWSGl4Ks+ply+
	 7KtMZwsanwOK/9znc4a2GeDs+wWKVcxbZvCkeO6C4Z8ErmmyVBzrkDuQT40p4shjc+
	 qEo86jm7rQWHOrIoQGizVn2vinBVJoCgtxLUMjQSIjfDJGvv+Ju8YakKM913LIP2iY
	 do7gqQZHCw0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CCACA9EC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167263368.31742.14271665061762200290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9204ad87c6378c6a4f7f752762359c59914d9627dd1e086e6f74dff0475d46cc
Date: Sat, 10 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791672633
