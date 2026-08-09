Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4994D1F8755
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786297234; cv=none; b=uIhDdpg9bFZXqMlMO2S6ogAQ4KyZGTG64qoMS5ZYD4ijLpzmjLrB2qvFbFIxzw1Hsp8FoOBWqDEDYyOQ5vSepUNvnOu15XmMi5lrpK+6YsfzEJU2vAGkuoWigAPpvUIvz+vHct/APfkz4cbIeUJ92iSQkFYIa48GiEf6Zyc/RUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786297234; c=relaxed/simple;
	bh=iP+i/bijV55SOU3owPpDme+j0mSnbpRBpaZ+FMRKaL0=;
	h=To:Subject:From:Message-Id:Date; b=i7KGNTl0b7KBu2B7rbmlj66raEZDo49C+DNEUgXif+at7jzRiJ/yVAHJovdxngJOsK6PlcnCNU+I2GFd05BjbkZVtXa9SzQWBzRoPp4LXGuULWUgIqzKreGflo73nV/giv4HbFHPaWxZ7mCSMGFQVYNc3StpijZshT3qEknE6ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQQEFuPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQQEFuPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37D8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786297233;
	bh=iP+i/bijV55SOU3owPpDme+j0mSnbpRBpaZ+FMRKaL0=;
	h=To:Subject:From:Date:From;
	b=UQQEFuPo1i4Pv4I4BAowwMRVAgrWRlVfPk62fWp+ZNjf2+vrz9Wp0RjhPfHyLzOSP
	 KGIyP5RwfTjnt4gO0WfXtaWcmzgbuVB9PCGHAbxzSjvA8+A03zEWqKn/dIWYpXk/7Q
	 8RKzzkVuldrTMIJD4nM4lS1KPu9vn48zxGRAy5E4DJk8ewQhLlY+3NLqTKsAeA7E0H
	 tRL8FqBmCOW/cRSO/tH52hSewTF4iey/6AYpWCz+ReQWlf1PgmdYG+eV09lJZ3nhcA
	 ZxfJGYhSgAPV5f+96aQinEGblOw+bMDUG8cb5QHcPpimVyPKQAvHNr9DnjpdF6+oqc
	 tIVxYeH10D6zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06AFC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629723368.15319.15530538667514691946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ff47262cebdbefd9a6f2113e4aa06dd3cb344b07a6bd760e92d2fe07fc993f
Date: Sun, 09 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786297233
