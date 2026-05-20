Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2AB8374E64
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779273035; cv=none; b=U6umpwoy3x1P4U/I41F9tkepPC4LtewSxd7J1UXx7XsKnDUK5hdNkINhS8K+knf840pMveooQ/fQyd/HEgK5fCYI1Ulv3shA8iIpGTi7XR0sigX+zZPxokmKh4IvVV1L4gJT2eUqnMqsT0C6+9puafDOZLA7fktWkLw2uI5nkUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779273035; c=relaxed/simple;
	bh=F9lbbbzaPDE/92ilJuLs5NW1B7Pt+xC9Qqsgaes7vxg=;
	h=To:Subject:From:Message-Id:Date; b=pPgz+1TGszumb50GS0AnCp/ycXao5/0c7jM1lSOI/1zWaG5A2HnOgiQzd3iuMuWuAT+PbD3RtgZZMwbcmcfOHi/QuyO5WOrThjeqK9F5yDkhx/SeGhSZb6wtOgGxcGSU5qZ4J7BAjw3B3+q+m+YXXkB1xaRVG3/S8UtpRtsGWLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5qAO6lX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5qAO6lX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B22C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779273033;
	bh=F9lbbbzaPDE/92ilJuLs5NW1B7Pt+xC9Qqsgaes7vxg=;
	h=To:Subject:From:Date:From;
	b=H5qAO6lXHVsBkO31IIBKnxit0a1p2ewIt1gfO9heVL4fXKBFWitLyiw+uZHi/gc3K
	 9wOddBwDTGVMTtPq/XhTGXNDbJ/vHb3qATfSDkY6UjiT3sWTJ5qNTFPxtqF4kJljdn
	 ruvA+8Zp9JNMsTysu5/b+HJD2zE8F50/UTithW2gE9iTcVtTpjRglz1Dd2Pp2CbIIH
	 l3GhD+u0bJcXsaxufYwXbHbqAOl1yFwjPAuWRIxPkIdtB1DAKepwrdARWL3fGLujPc
	 JPpk0LdG8ZrxjiXmmKWdw1T6bXD1wxedgpYLTI0mad8jOZh75WYR/H9wDQbReIM4lR
	 NZU2t2tDADkpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C4CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927303368.1967.16917809664170844712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503072cc21752cebe1878838b5671fef07d44d065e94dba08a1d11ea28ac89e2
Date: Wed, 20 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779273033
