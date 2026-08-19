Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C418299A82
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787181034; cv=none; b=lifND52+WnYgsX3niHHUxwQvQqfQk+0yo8QFaee4VasCP9iD85BAianfx8CGXKLQLEV3a0OyO1XKxwN9y1RB2/qhWlZyD6nTDgdq8uNsRo1AD3sbBmejcEX9mJUN5B6+s8VkkoH0ne6ekXYL0zeCbwHASCpJxhJIBO1BLg/js7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787181034; c=relaxed/simple;
	bh=zp6vbL36lUYQOVjnDCYO2/k5EYY92X/OTDsvqWjVIYI=;
	h=To:Subject:From:Message-Id:Date; b=pZHYRlCVyecxH0FAnRMyxqD9q8tR1VusLUc0NFs1AcfTC2rQrEONXj8+O7Yl7di8JpHjiZUSJvvzepaicSygRc5TFS8Vp4h2BMzDRkEnipVIhJ+FjZK1K5F5lKF/iWcUSm9lCeM7flxIvh0RsElZDKlvCuP680p8+4fwxvANllk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5Ie4VYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5Ie4VYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DB6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787181033;
	bh=zp6vbL36lUYQOVjnDCYO2/k5EYY92X/OTDsvqWjVIYI=;
	h=To:Subject:From:Date:From;
	b=l5Ie4VYzgwGiSBUFTbSB44nBplhj0UJtrATftX6rJFAnPC336LnFtiZtvkJpweYWL
	 0sgFs9Lgqy/ZdHG3zG/GUdN8r3sfV6NjFKc/i+3PvdGE757OZmF+nFPjjSK5nGQe42
	 x88PL4G+1587J7NJ/IsvCGDkwkX4Ow/FoHcFRRfN0luje5QV4LjSY1X0qcuzYE999O
	 My5JAZAF5F22vsGWjkPTrfXkRV2ABOrrGr35w396Yn9PLn3R1ubUzQxg2QJdZEFyR2
	 Jk90PivRqiwAAyITQDLgMBH6dTxQu4BQUUy/9I/G8BeqNUNpgmGvX1xeJf8FfNDWKG
	 6AGzg98oVFOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0FEC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718103369.24069.11021663534693415567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc6259d670f84f24b8fba80c9310f62e12d14207ae8bb688877640307395db8
Date: Wed, 19 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787181033
