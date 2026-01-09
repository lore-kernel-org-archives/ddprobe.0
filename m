Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C8327E05F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767982434; cv=none; b=a6xVVGfaD+EI10GvdUz9/TKemIEp0llaRRpybC0VGvOJjlxU5nZJ/8ZJYErgrAHjjUJWQlJiT830VsTs9rJgrhNuItLS68f18rJ6QO3YP997lLrio7JHcfq/IACCjymm1v/k5AbasQp3RkrC6YnfW+mIEdmtkEUJ9dXIXau2JyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767982434; c=relaxed/simple;
	bh=GVpQpAufDWmOBlSOPmAYtUDBxx/5RHZSRrTynGU+Xqk=;
	h=To:Subject:From:Message-Id:Date; b=ECe+2S++P+tmiku8cTLnRFtYjphusei7Qy2yVXt9UX712DlyZt8jFsZiYp471p2HK8EPx9wgs/+Iu63BATMIu8aD8P3b/7u4L1hWWb8D7WqmmWLq3tNtZKdBuQSZSmQ0jzV2Xw4yhh5/y2THlcpcTaoVjPy4pGqQ0VLEWmmJSeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUKjQ0cE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUKjQ0cE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A085DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767982433;
	bh=GVpQpAufDWmOBlSOPmAYtUDBxx/5RHZSRrTynGU+Xqk=;
	h=To:Subject:From:Date:From;
	b=UUKjQ0cElN/jnZKjeY1q1lGIYdoYmcNDRDL0XaMyZnFVnGEgtvpsLrttys67BgeWz
	 JLcZhsHjfFvB23aiIRSgg9XyTZ96fyeHZH6LM4DPBLSl4QFxoqsfQ2dqq6nCWi90zP
	 Fvlhn/5lA3AG52yDLK0Sr/0eMoeyxf3GPiKtVTqGE2ck+l5OMY/iMZUfNkjCs+qFNh
	 CZGA1BiPOWfRE5A85RPp365tqPrH7+xqH5xRHh6IBR7+Oq+xAapmoqUI4w1qYQfal5
	 Z4eqMfUTOg1zdXPkNOjtdO53IJ7+Ctd1ItF5UrF59Kxo0Sm3QVQSHCNc2FDr0Xw+L2
	 gmGwd3MQ78h6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA6FD26D83
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798243358.15595.12316821746159228268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa81fdd589a3397eda59094c051d92845c1000c7c51228899fde1c858cf778c
Date: Fri, 09 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767982433
