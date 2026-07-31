Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FB13B9DBB
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785492035; cv=none; b=P4+262ggUASySkF2fMFRr+gQkpG6XF6F56hoOWI3hSlWLzjpgj6TOJkdTPtfrAEeTWGtTd8S32qqpK9inPMsi5c+sharJyIwIUcrke8bLHcEgzxDBKh0L5rVGWcst6KAA+EH1wKZ7STpfCpUklQjiPw0LHw0KZCTAy/Lk43L9xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785492035; c=relaxed/simple;
	bh=0uHM6YR53bflgcOvDr7Rx/t6NR1YT3jOvJ+kdbqqplU=;
	h=To:Subject:From:Message-Id:Date; b=OTt9UCQLNQxBpqkEjrgFkLHiLbgViiOraLjM/lsiZNkYlc/TInA3yQAKwy4bAXW+kTFxPC4uqIhz1SHhG49xfkQURO8gtJnd8l+qSbs6uzfzIT0JqDrECIzCsCNNP/HrYR5hRNExSNVevPDg3OHtHmE/s7HwaCCsZMazUnYwN2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7yTVxN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7yTVxN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA13CC2BCF7
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785492033;
	bh=0uHM6YR53bflgcOvDr7Rx/t6NR1YT3jOvJ+kdbqqplU=;
	h=To:Subject:From:Date:From;
	b=j7yTVxN+GyAFpdDVlDkTVT7utZD2JXjEfzUmH5mpFnmQkTyQAuv23HkvQOhMziODF
	 eBGfhpNZs2PYBKmEpFnPGEVFWnCjiN8n+gVQFC351+m3fWKbfE7PhDo3VxRmuntzZb
	 nhgchOi2lYKAD5vlaE1VfnS5t0O8ncdE3sAnLXwjx/cRucUW4HgWoQOcVMU0eM9ATk
	 yRP937q4lTfE1k4YY3SqAMCWvuiWoNq2Qo4Awd40gaT9zVwafqP4PR3Y4Q8GDqWP9t
	 42ZdafJ0wVNPJIqrIBg9eGA9DRq8LyMDHd+B4InvAoAusbswW9nsLISNMoamXhvxuC
	 ZBKqG0GgWATgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA24BC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549203368.2187.896935924745529464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efac7238470d21e85ca544b01b4a85beea23f050a24f103109d08f929f7e1e26
Date: Fri, 31 Jul 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785492033
