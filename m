Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EFA1C861E
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752811194; cv=none; b=gG1r4xLtQuZg/hW/HJ2m97DPVc4lLBkuaV30uY/YG31e4bafdDLM5oN71WaHro6NIWiKFAiClvapMpNQVNhe26ELeg7Mp+ntQutDjATqW9jjgAwqqQPDS+Gl8OGb3Pfn9fI2j5TEeuB7U00ZNjy2zC3RKEOyavs4Cp6hW+OU1ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752811194; c=relaxed/simple;
	bh=SJvj/ggnqtGtZfWtUc9lJ2kaqRGTdo5dh2puVo6JLAM=;
	h=To:Subject:From:Message-Id:Date; b=KHQMYIlBD+elOrOMPu2TKDQWCKCxqY7jN+attmrjjU8tTk+LH7VcHQu05U9tZ4DU898D2Fw7jyFw+cTv8cG9cEbY6LHj4wWQ1A73FSoRfBRkBM271n2IMiDpTNPYC6Hw/+dIQs0ZVaKxZjTLCxRyFh7L4wQhb9MNnmlkujuSrzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEVh3xCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEVh3xCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24AEC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752811193;
	bh=SJvj/ggnqtGtZfWtUc9lJ2kaqRGTdo5dh2puVo6JLAM=;
	h=To:Subject:From:Date:From;
	b=KEVh3xCPlzkGYaA6ZQmcqcmXFbaMrZNkry4FQ/4k5rHK4XBSLOgkm6MyREFa7Mri6
	 rQUEjyV6iCus5jPGVkUW6q3XzqALDkjUCaNb55+SlJr0I27iuMw8MZhTyWLgablr3i
	 h6gWbqDmHNpWdyNWbH26h8FkENlej78iTcUxZqG3sjo5opDFDYc+MsW3uygkiqCCRw
	 rZTe7nhBmqE3h1rh6P+wklLaJY8zPG6HntC9HMJW8WKt7LdNjGrYRLgdisogccQA9I
	 0k3tWkTeTivlt4eNuD94Es/xkUSMCMcv8E2PbXxL51kvodyadpU3W3ZdNzNWq63Jq8
	 pABKZL1T4eF9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A8C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281119357.17703.15420261243696537474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842670cc639bfca0656e17b345da06636d184c4f283b1999f36cc120528a671a
Date: Fri, 18 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752811193
