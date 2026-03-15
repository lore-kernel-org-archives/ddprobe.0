Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30193335543
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773579294; cv=none; b=d4Ge/LGffzmUzFpKAu1ZBpG2pNLk2nrIsaqdZ/lNxq7f23IvvvutY2BSwncEtFBp0jL+93bdCcSLvSH/kkFaDYDv8D2mEoBcCBdNWZop9MXjDMuqmP8C4QoESOr3JMFyU7cczuRbYuTiNp2HO43V0mi1klgTz5+dUP86j24+oEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773579294; c=relaxed/simple;
	bh=IqnBuB7aXGyjMq1NPkecyPAJKGvnO7XiD6bysBAjTQk=;
	h=To:Subject:From:Message-Id:Date; b=qjfzUDOJhHjYQy1DnD02frjxe3PbjDe3iZpf6d9146qS3fAa1QH7yH061s0Qt2lLHQQ0d277i3DlNKYQ+MsWbrQOiObjZGsT5eUD9unGQaduDf+RJgKraBLQrxcO6Gbb9wVh+DQrq0jlyo+VBsrVEJM7wY7La9Nfq7LH/D7h35g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYoRBZZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYoRBZZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BEAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773579293;
	bh=IqnBuB7aXGyjMq1NPkecyPAJKGvnO7XiD6bysBAjTQk=;
	h=To:Subject:From:Date:From;
	b=aYoRBZZIu7xcasi3ImFKAEol6VdxjCsGSWwlaDLOpNe+uMFP640YQ+viUA2Kqetg2
	 GpE58Mgj7xzfmRAwNubQjcvBKRIbhQkV4nEiZorntX6NJSmAhTtnNppbdlIDGMfzZ6
	 f8JcCg8O81QIR8J35YwGDlopCPVQBdqyArntnBkFYbZg0/pBQjaVl0Gia4dpfR+JgR
	 KVY779QZGWhCjzCt/ToYo6JvIvTEgZahhHCUpRLv+GSi3tFZQBVcosNkmwrQlcF8Yd
	 EamsDR5fTWEfpX/ryrmU9WjQkwTAfQDpDAW1lw6qrTiQiS6lfFczHpYBrSvs0zSgow
	 7QX8m9DcMeZuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE45D58B21
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357929360.17003.8572578688271837600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638f9050199d4179ef944251442ac149363eb5cab50517e38bfa88fc8a65aadd
Date: Sun, 15 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773579293
