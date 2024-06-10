Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8A1224F6
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718004443; cv=none; b=U0hHhI0FQlbdBGsKXJc3grA96cCr5eL0p6hdIqDubpjBG4wzg5SuUw/dSwnSHTG5Ba2+OTGSB5Yrfi4xM44GuqJm3cwZtVV/iH8k0ADmaO/MrF1mNgLFB+MbvEFnFwFtHqitzxTwVFDXALO7cQTPNv3IyQNs8olDOx0TglSS4kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718004443; c=relaxed/simple;
	bh=ii8v/uwYCd5wQo17O2vdYrqhAcxKpdatSJN3VGN7hBA=;
	h=To:Subject:From:Message-Id:Date; b=isHGeiDKWZmdppFRjn7GPnA4d9fPBTb0dJKTghS/k7E44J087EEq+nZclhhtfojt4RXVXp4MRXIzLZaHAPEGlWToFM8rfZMzDBMsB1vDTZaL5r0VFl48pOEBPc+XWBRThnWppPjdCqIyJV6sAsPR6n3VaChNiu9wfAK3sPaqsN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtpdELgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtpdELgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA46FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718004442;
	bh=ii8v/uwYCd5wQo17O2vdYrqhAcxKpdatSJN3VGN7hBA=;
	h=To:Subject:From:Date:From;
	b=NtpdELgn3qVGUYv8Mbq0mGlf7GMCWkeXjqq7ra3aJA9Nv85lDYVrSxjnT691UwVLD
	 WwztZwdw3E/qmBlzw/kwHWJZDXOz/W/kImPtiyTZKS9sRE91+FfthJTTkmCkbBlHAk
	 /0qdowui2U7nTpXSLrC84BjqXULJqWs9rOK7xTZrR4dtnSaXbPzTcGo56eCHXcDnJQ
	 fF4MerSwtnfURhNoFW1zxDECTDV5wgPCmmpqdnykKfflJyX7v94RJmhoMuGrWv6Qod
	 r951K69uRIS2mhTZkWDrjZF0pukR2uR5FDyWKonKEiAd9lJLh207WJvOWNEq3AMKFY
	 du25Xp1MBU+pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72D3C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 07:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800444280.23296.9761448424740935404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cdf899878fd4e00d754cd638162ad60faf659658477e39b7466d3fff76d0ad
Date: Mon, 10 Jun 2024 07:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718004442
