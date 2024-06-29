Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B8820B35
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719670463; cv=none; b=g+G1cwvIblxQ7K3Oz87UGcSa6IbISqf8vTcwruakyiMIsJx5/VnYLbefwBjtnPlbbkG//oGte+l/xAxe0DuOGiSMLYt/76wQxKqv1xtjmUAcxgaTLAkyhzklBcnsY1kCiirKinrTvVYxVWCiy52Np+bFB0t7e+aCOviSzJP0eGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719670463; c=relaxed/simple;
	bh=/rrEClfoZGR9GIpOeA8pPSzZ8QVcNxWZ8M3I5LZz0s4=;
	h=To:Subject:From:Message-Id:Date; b=hWb1QNojIOwYGuNiEg2kU+LcDzq1Tdk756dFWBA2hzJzmCwJWtny7l/4/HXH3lk+QNmPyouchtmrg6TXhOrSC7rnmCmNRhkqkTe0ejyNcbDvBI3UOVynYaiKgKMcdYq1xaElmVj4ZuO9Ei0oJFx3L9ipKsCTw7Jnjb6io/dZ+A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEv6W/Zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEv6W/Zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A5CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719670462;
	bh=/rrEClfoZGR9GIpOeA8pPSzZ8QVcNxWZ8M3I5LZz0s4=;
	h=To:Subject:From:Date:From;
	b=HEv6W/ZwvJWLwg/eHN9cgWqB/WYClnSHbCxuRJAc8tv5f0Kj6lamFYdVrORbjJ+i0
	 g5zPG2tI2MshJJir1zhmvd5jZOeYZ3Qp3PTjhsErRnFDmmbn6JKyLsihM1zQ8j/vbu
	 eqVMwiFjViCtcLmh+zFW/Wq9es4ZYP2wQVbMFxLRoAi8/92lqo4onVEMDH3Za+Dgp4
	 /tocUBcbI6mU53/sS7yRHnFQOZK/ckYjjaRfGXisT2gNrWoVrX316EQCCTp8BTbYkO
	 u+TA0TwW/7K3e8VZLk05pcI0Gr885oAzXEM4Jfk0h7NQ5hhzscZiv7GUiyyR0lB7Jp
	 3Pi7946rQvTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CB5C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967046275.16245.3698224782053428676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23601dfc8558ab94a0822eeba1181caec21c4b10f5c063b832008a05cfd50cb2
Date: Sat, 29 Jun 2024 14:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719670462
